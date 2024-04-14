import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skin_app/components/page_top.dart';
import 'package:skin_app/components/skin_type.dart';
import 'package:skin_app/components/to_do_list.dart';

class Pofile extends StatelessWidget {
  const Pofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTop(
              text: "Hi Utik!",
            ),

            //box
            SkinType(),
            ToDoList(),
          ],
        ),
      ),
    );
  }
}
