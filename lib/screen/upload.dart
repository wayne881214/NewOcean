import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:newocean/screen/shake.dart';
import 'package:newocean/firebase/storage_service.dart';


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
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new shake()),
                );
              },
              child: Text('shake'),
            ),
          ),
        ],
      ),
    );
  }
}
