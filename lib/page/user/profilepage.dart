import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'storage_service.dart';
import '../../firebase/storage_service.dart';
import '../home/home_page.dart';

class ProfilePage extends StatelessWidget {

  final String name;
  final String email;
  final String img;
  final String password;

  const ProfilePage({
    Key? key,
    required this.name,
    required this.email,
    required this.img,
    required this.password,
  }) : super(key: key);



  Widget textfield({@required hintText}) {

    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final Storage1 storage = Storage1();
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF00BFA5),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));},
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfield(
                      hintText: 'Name: $name',
                    ),
                    textfield(
                      hintText: 'Email: $email',
                    ),
                    textfield(
                      hintText: 'Password: $password',
                    ),
                    textfield(
                      hintText: 'Identity: VVIP',
                    ),
                    Container(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        //color: Colors.black54,
                        child: Center(
                          child: Text(
                            "Update",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('$img'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 270, left: 184),
            child: CircleAvatar(
              backgroundColor: Color(0xFF00BFA5),
              child: IconButton(

                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () async {
                  final results = await FilePicker.platform.pickFiles(
                    allowMultiple: false,
                    type: FileType.custom,
                    allowedExtensions: ['png', 'jpg'],
                  );

                  if (results == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('No file selected'))
                    );
                    return null;
                  }

                  final path = results.files.single.path!;
                  final filename = results.files.single.name;
                  storage.uploadFile(path, filename);
                  DatabaseReference userRef =
                  FirebaseDatabase.instance
                      .reference()
                      .child('Users/$currentUser');
                  userRef.update({
                    'profileImage': 'https://firebasestorage.googleapis.com/v0/b/newocean-444d7.appspot.com/o/userImage%2F$filename?alt=media&token=de20890d-41ea-41cb-a6a5-fdafb6a9ee8f'
                  });
                  //storage.uploadFile(path, fileName);//.then((value) => print("Done"))
                },
              ),
            ),
          ),
          /*
          FutureBuilder(
              future: storage.listFiles(),
              builder: (BuildContext context, AsyncSnapshot<firebase_storage.ListResult> snapshot){
                if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                        itemCount: snapshot.data!.items.length,
                        itemBuilder: (BuildContext context, int index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: () {},child: Text(snapshot.data!.items[index].name),),
                          );
                        }),
                  );
                }
                if(snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData){
                  return CircularProgressIndicator();
                }
                return Container();
              }),

          FutureBuilder(
              future: storage.downloadURL('Screenshot_20221210-102114_Genshin Impact.jpg'),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot){
                if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
                  return Container(
                    width: 300,
                    height: 250,
                    child: Image.network(snapshot.data!, fit: BoxFit.cover,),
                  );
                }
                if(snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData){
                  return CircularProgressIndicator();
                }
                return Container();
              })*/
        ],
      ),
    );
  }

}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xFF00BFA5);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

