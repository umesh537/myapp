import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';

class Category extends StatelessWidget {
  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  CollectionReference categories =
      FirebaseFirestore.instance.collection('categories');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('categories').snapshots(),
            builder: (context, snapshot) {
              return FutureBuilder<QuerySnapshot>(
                builder:
                    (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Container();
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container();
                  }
                  return Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text('Categories')),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text('See All'),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Expanded(
                        //   child: ListView.builder(
                        //     scrollDirection: Axis.horizontal,
                        //     // itemCount: snapshot.data!.docs.map,
                        //     itemBuilder: (BuildContext context, int index) {
                        //       var doc = snapshot.data?.docs[index];
                        //       return Container(
                        //         child: Column(
                        //           children: [
                        //             Image.network(doc!['image']),
                        //             Text(doc['catname']),
                        //           ],
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // )
                      ],
                    ),
                  );
                },
              );
            }
          ),
        ),
      ),
    );
  }
}


