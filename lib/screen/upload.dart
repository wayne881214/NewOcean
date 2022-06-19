import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:newocean/screen/shake.dart';
import 'package:newocean/firebase/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:percent_indicator/circular_percent_indicator.dart';


class upload extends StatefulWidget {
  @override
  _uploadState createState() => _uploadState();
}
class _uploadState extends State<shake> {
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
          FutureBuilder(
            future: storage.listFiles(),
            builder:(BuildContext context,
            AsyncSnapshot<firebase_storage.ListResult>snapshot){
              if(snapshot.connectionState==ConnectionState.done&&snapshot.hasData) {
                return Container(
                  padding:const EdgeInsets.symmetric(horizontal:20),
                  height:50,
                  child:ListView.builder(
                    scrollDirection:Axis.horizontal,
                    shrinkWrap:true,
                    itemCount:snapshot.data!.items.length,
                      itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:ElevatedButton(
                          onPressed:(){},
                          child:Text(snapshot.data!.items[index].name),
                        ),
                      );
                    })
                );
              }
              if(snapshot.connectionState==ConnectionState.waiting||
                  !snapshot.hasData){
                return Text("Stupid flutter");
              }
              return Text("Stupid flutter");
            }
          )
        ],
      ),
    );
  }
}
