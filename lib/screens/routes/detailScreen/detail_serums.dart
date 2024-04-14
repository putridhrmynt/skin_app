import 'package:flutter/material.dart';
// import 'package:skin_app/components/asset_image_widget.dart';
import 'package:skin_app/components/detail_widget.dart';

class DetailSerums extends StatelessWidget {
  // static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Serum',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailProd(
              image: 'assets/images/scarlett_serum.png',
              prodName: "Scarlett Whitening Acne Serum",
              prodDetail: "Calming acne, reduce inflammation",
              activeIng: 'Tea Tree, Salicylic Acid, Liquorice',
            ),
            DetailProd(
              image: 'assets/images/avoskin_serum.png',
              prodName: "Avoskin Miraculous Revining",
              prodDetail: "Effective exfoliator, chemical exfo",
              activeIng: '10% AHA, 3% BHA, Niacin',
            ),
            DetailProd(
              image: 'assets/images/erha_serum.png',
              prodName: "Erha Age Corrector Serum",
              prodDetail: "Dismiss wrinkles, anti-aging",
              activeIng: 'Peptides, Snail Munchin, Soya P.',
            ),
            DetailProd(
              image: 'assets/images/implora_serum.png',
              prodName: "Implora Luminous Brightening",
              prodDetail: "Brightening, hydrating",
              activeIng: 'Niacinamide 10%, Kakadu Plum',
            ),
            DetailProd(
              image: 'assets/images/hanasui_serum.png',
              prodName: "Hanasui Anti Acne Serum",
              prodDetail: "Anti bacterial, anti acne",
              activeIng: 'Salycilc Acid, Succinic Acid',
            ),
            DetailProd(
              image: 'assets/images/whitelab_serum.png',
              prodName: "Whitelab N10-Dose+ Bright",
              prodDetail: "Brightening, reduce Hyperpigment",
              activeIng: 'Niacinamide 10%',
            ),
          ],
        )),
      ),
    );
  }
}
