import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:newocean/storage_service.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Storage storage =Storage();
    return Scaffold(
      appBar: AppBar(
        title: Text('cloud storage'),
      ),
      body: Column(
        children: [
         Center(
           child: ElevatedButton(
            onPressed: () async {
              final results = await FilePicker.platform.pickFiles(
              allowMultiple: false,
              type:FileType.custom,
               allowedExtensions: ['png','jpg'],
              );
      if(results==null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No file selected'),
          ),
        );
        return null;
      }
      final path = results.files.single.path!;
      final filename=results.files.single.name;
      storage.
          uploadFile(path,filename)
          .then((value)=>print('Done'));

    },
    child: Text('upload file'),
    ),
    ),
      ],
      ),
    );
  }
}
