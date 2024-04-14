import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({
    Key? key, 
    required this.category, 
    required this.image, 
    required this.numItems, 
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: press,
                child: SizedBox(
                  width: 350,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(image,
                        fit: BoxFit.fitWidth,
                        ),
                
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF343434).withOpacity(0.6),
                                Color(0xFF343434).withOpacity(0.2),
                              ]
                              )
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 20,
                          ),
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: "$category\n",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  TextSpan(text: "$numItems items")
                                  ]
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}