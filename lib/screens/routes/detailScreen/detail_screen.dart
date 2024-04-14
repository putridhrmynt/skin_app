import 'package:flutter/material.dart';
// import 'package:skin_app/components/asset_image_widget.dart';
import 'package:skin_app/components/detail_widget.dart';

class DetailScreen extends StatelessWidget {
  // static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moisturizer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailProd(
              image: 'assets/images/originote_moist.png',
              prodName: "The Originote Hyalucera",
              prodDetail: "Calming, hydrating, gel",
              activeIng: 'Hyaluron, Ceramide, Chlorelina',
            ),
            DetailProd(
              image: 'assets/images/cosrx_moist.png',
              prodName: "COSRX Moisturizinng Lotion",
              prodDetail: "Oil free, Lotion",
              activeIng: 'Birch Sap',
            ),
            DetailProd(
              image: 'assets/images/emina_moist.png',
              prodName: "Emina Bright Stuff",
              prodDetail: "Brightening, Moisturizing",
              activeIng: 'Summer Plum, Vitamin E',
            ),
            DetailProd(
              image: 'assets/images/g2g_moist.png',
              prodName: "Glad2Glow Bluberry",
              prodDetail: "Barrier Repair, Brightening",
              activeIng: 'Blueberry extract, 5% Ceramide',
            ),
            DetailProd(
              image: 'assets/images/skintific_moist.png',
              prodName: "Skintific 5X Ceramide",
              prodDetail: "Gel, Repairing",
              activeIng: 'Ceramide, Hyaluronic Acid, Centella',
            ),
            DetailProd(
              image: 'assets/images/skintific_moist3.png',
              prodName: "Skintific Truffle Biome",
              prodDetail: "Skin reborn, Cream-Gel",
              activeIng: 'White Truffle, Ceramide, Probiotic',
            ),
            DetailProd(
              image: 'assets/images/smtc_moist.png',
              prodName: "Somethinc Skin Saviour",
              prodDetail: "Gel, Barrier, brightening",
              activeIng: 'Marine Collagen, Ceramide',
            ),
          ],
        )),
      ),
    );
  }
}
