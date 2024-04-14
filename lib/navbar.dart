import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Utik'),
            accountEmail:
                Text('desak.putri.dharmayanti@student.undiksha.ac.id'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/oily.png'),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.teal[300],
            ),
          ),
          ListTile(
            leading: Icon(Icons.attach_file_rounded),
            title: Text(
              'Assignment 7: API',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            onTap: () => Navigator.pushNamed(context, '/news-screen'),
          ),
          ListTile(
            leading: Icon(Icons.attach_file_rounded),
            title: Text(
              'CRUD: Add Products',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            onTap: () => Navigator.pushNamed(context, '/crud-screen'),
          ),
        ],
      ),
    );
  }
}
