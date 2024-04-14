// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:skin_app/navbar.dart';
import 'package:skin_app/screens/catalog_screen.dart';
import 'package:skin_app/screens/pofile.dart';
import 'package:skin_app/screens/review_screen.dart';

class SkinDeal extends StatelessWidget {
  const SkinDeal({Key? key}) : super(key: key);

  void goToAnotherRoute(context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: Text('SkinDeal',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.face_retouching_natural_sharp)),
              Tab(icon: Icon(Icons.comment)),
              Tab(
                icon: Icon(Icons.auto_awesome),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Pofile(),
            const ReviewScreen(),
            const CatalogScreen(),
          ],
        ),
      ),
    );
  }
}
