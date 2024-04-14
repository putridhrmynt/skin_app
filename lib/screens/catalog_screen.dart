import 'package:flutter/material.dart';
import 'package:skin_app/components/catalog_list.dart';
import 'package:skin_app/components/page_top.dart';
// import 'package:skin_app/screens/routes/detailScreen/detail_screen.dart';

class CatalogScreen extends StatelessWidget {
const CatalogScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          PageTop(text: "Catalogue"),

          CatalogList(
            category: "Moisturizer", 
            image: "assets/images/moists.jpg", 
            numItems: 7, 
            press: () => Navigator.pushNamed(context, '/detail-screen'),
            ),

            CatalogList(
            category: "Toner", 
            image: "assets/images/toners.jpg", 
            numItems: 4, 
            press: () => Navigator.pushNamed(context, '/detail-toner'),
            ),

            CatalogList(
            category: "Face Wash", 
            image: "assets/images/fws.jpg", 
            numItems: 3, 
            press: () => Navigator.pushNamed(context, '/detail-fw'),
            ),

            CatalogList(
              category: "Sunscreen", 
              image: "assets/images/sunscreen.jpg", 
              numItems: 5, 
              press: () => Navigator.pushNamed(context, '/detail-sun'),
            ),

            CatalogList(
              category: "Serum", 
              image: "assets/images/serums.jpg", 
              numItems: 6, 
              press: () => Navigator.pushNamed(context, '/detail-serum'),
            ),
              

            // TextButton(
            //   onPressed: () => 
            //   Navigator.pushNamed(context, '/detail-screen'),
            // child: const Text('Testtt'),
            // ),
        ],
      ),
      ),
    );
  }
}

