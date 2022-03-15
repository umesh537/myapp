import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: FutureBuilder<QuerySnapshot>(
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
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        
                        itemBuilder: (BuildContext context, int index) {
                          return Text('addfdfd');
                        },
                      ),
                    )
                  ],
                ),
            );
          },
        ),
      ),
    );
  }
}

mixin QuerySnapshot {}
