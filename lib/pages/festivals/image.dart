import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:file_picker/file_picker.dart';
import 'package:myapp/pages/storage/storage_services.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageData extends StatefulWidget {
  const ImageData({Key? key}) : super(key: key);

  @override
  State<ImageData> createState() => _ImageDataState();
}

class _ImageDataState extends State<ImageData> {
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      appBar: AppBar(
        title: Text('storage test'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  final results = await FilePicker.platform.pickFiles(
                    allowMultiple: false,
                    type: FileType.custom,
                    allowedExtensions: ['png', 'jpg'],
                  );

                  if (results == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('No file Selected'),
                      ),
                    );
                    return null;
                  }

                  final path = results.files.single.path!;
                  final fileName = results.files.single.name;

                  storage
                      .uploadFile(path, fileName)
                      .then((value) => print('done'));
                },
                child: Text('Upload File')),
          ),
          FutureBuilder(
              future: storage.listFiles(),
              builder: (BuildContext context,
                  AsyncSnapshot<firebase_storage.ListResult> snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  //   return Container(
                  //   padding: EdgeInsets.all(4),
                  //   child: GridView.builder(
                  //       itemCount: snapshot.data!.items.length,
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 3),
                  //       itemBuilder: (context, index) {
                  //         return Container(
                  //           margin: EdgeInsets.all(3),
                  //           child: FadeInImage.memoryNetwork(
                  //               fit: BoxFit.cover,
                  //               placeholder: kTransparentImage,
                  //               image: snapshot.data!.docs[index].data()['imageUrl'],),
                  //         );
                  //       }),
                  // );
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        // shrinkWrap: true,
                        itemCount: snapshot.data!.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(snapshot.data!.items[index].name),
                              // child: FadeInImage.memoryNetwork(
                              //     fit: BoxFit.cover,
                              //     placeholder: kTransparentImage,
                              //     image: snapshot.data!.docs[index].get('url')),
                            ),
                          );
                        }),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting ||
                    !snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return Container();
              }),
          FutureBuilder(
              future: storage.downloadURL('1639112487.webp'),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return Container(
                    width: 300,
                    height: 250,
                    child: Image.network(
                      snapshot.data!,
                      fit: BoxFit.cover,
                    ),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting ||
                    !snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return Container();
              })
        ],
      ),
    );
  }
}
