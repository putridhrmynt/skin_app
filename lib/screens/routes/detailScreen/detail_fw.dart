import 'package:flutter/material.dart';
import 'package:skin_app/components/detail_widget.dart';

class DetailFw extends StatelessWidget {
  const DetailFw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Face Wash',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailProd(
              image: 'assets/images/senka_fw.png',
              prodName: "Senka Perfect Whip Fresh",
              prodDetail: "Foamy, Alcohol-free",
              activeIng: 'Uji Green Tea',
            ),
            DetailProd(
              image: 'assets/images/cnc_fw.png',
              prodName: "Clean&Clear Foaming FW",
              prodDetail: "Oil-Control",
              activeIng: 'Myristic Acid, Lauric Acid',
            ),
            DetailProd(
              image: 'assets/images/you_fw.png',
              prodName: "YOU Hy! Amino AC-Ttack",
              prodDetail: "Anti ACne, Oil-control",
              activeIng: '5D Hyaluronic acid, Centella',
            ),
          ],
        )),
      ),
    );
  }
}
