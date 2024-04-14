import 'package:flutter/material.dart';
import 'package:skin_app/components/asset_image_widget.dart';

class SkinType extends StatelessWidget {
  const SkinType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      width: double.infinity,
      height: 270,
      
      decoration: BoxDecoration(
        color: Colors.teal[300],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: Offset(3,3),
          )
        ],
        borderRadius: BorderRadius.circular(20), 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your skin type is,",
            style: TextStyle(color: Colors.white, fontSize: 18),
            ),
    
            Text("Oily Acne-prone\n",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                AssetImageWidget(
                  imagePath: 'assets/images/oily.png',
                  width: 70,
                  height: 110,
                  fit: BoxFit.cover,)
              ],
            )
    
          ],),
    );
  }
}