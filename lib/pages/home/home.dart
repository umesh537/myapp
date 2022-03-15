// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:myapp/pages/home/categories.dart';
import 'package:myapp/pages/Authenticate/login_page.dart';
import 'package:myapp/pages/home/mainbody.dart';
import 'package:myapp/pages/home/BottomNavigator.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/pages/home/searchbar.dart';
import 'package:myapp/pages/home/_carousel.dart';
import 'package:myapp/pages/home/header.dart';

class HomePage extends StatelessWidget {
  var callbackFunction;

  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.person),
    Icon(Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
                // child: Text("Lets get Started"),
                ),
            FirstCarousel(),
            Category(),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          // BottomNavigationBarItem(label: 'Saved', icon: Icon(Icons.bookmark)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
          BottomNavigationBarItem(label: 'Setting', icon: Icon(Icons.settings)),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

// Search Bar
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Ganesh chaturti',
    'Navratri',
    'Diwali',
    'Janmashtmi',
    'Raksha Bandhan',
    'Diwali',
    'Janmashtmi',
    'Raksha Bandhan',
    'Diwali',
    'Janmashtmi',
    'Raksha Bandhan',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var festivals in searchTerms) {
      if (festivals.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(festivals);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var festivals in searchTerms) {
      if (festivals.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(festivals);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
