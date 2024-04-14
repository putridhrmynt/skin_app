import 'package:flutter/material.dart';

class PageTop extends StatelessWidget {
  const PageTop({
    Key? key, 
    required this.text,
  }) : super(key: key);

  final String text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 23),
      child: Text(text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),),
      );
  }
}