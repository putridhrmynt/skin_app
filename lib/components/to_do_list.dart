import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            children: [
              Text(
                "What you need to do", 
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  ),)],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ToDo(
                task: "Double clean,\n",
                detail: "with cleansing oil, once a day",
              ),
          
              ToDo(
                task: "Wash your face,\n",
                detail: "with gentle gel gleanser 2 times a day.",
              ),
        
              ToDo(
                task: "Use toner,\n",
                detail: "with calming ingredients, centella is a req!.",
              ),
        
              ToDo(
                task: "Moisturizer,\n",
                detail: "lock up the moisture inside.",
              ),
        
              ToDo(
                task: "Sunscreen,\n",
                detail: "protect your skin from the UV light.",
              ),
        
              SizedBox(width: 20,)
            ],
          ),
        ),
      ],
    );
  }
}

class ToDo extends StatelessWidget {
  const ToDo({
    Key? key, 
    required this.task, 
    required this.detail,
  }) : super(key: key);

  final String task, detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Container(
        width: 190,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.teal[300],
          borderRadius: BorderRadius.circular(10)
      
        ),
      
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10
          ),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                color: Colors.white
              ),
              children: [
                TextSpan(text: task,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          
                TextSpan(text: detail,
                style: TextStyle(
                  fontSize: 15
                ))
                ]
            )
          ),
        ),
      ),
    );
  }
}