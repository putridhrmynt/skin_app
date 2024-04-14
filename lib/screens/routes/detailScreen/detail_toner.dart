import 'package:flutter/material.dart';
import 'package:skin_app/components/detail_widget.dart';

class DetailToner extends StatelessWidget {
  const DetailToner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toner',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailProd(
              image: 'assets/images/cosrx_toner.png',
              prodName: "COSRX Centella Water Toner",
              prodDetail: "Calming, Alcohol-free",
              activeIng: 'Centella Asiatica, Jeju Mineral',
            ),
            DetailProd(
              image: 'assets/images/originote_toner.png',
              prodName: "The Originote Ceraluronic",
              prodDetail: "Essence + Toner, Hydrating",
              activeIng: 'Ceramide, Hyaluron, Heartleaf',
            ),
            DetailProd(
              image: 'assets/images/sbm_toner.png',
              prodName: "Some by Mi Miracle Toner",
              prodDetail: "Exfoliate, AHA, BHA, PHA",
              activeIng: 'Tea Tree, Niacinamide, Carica',
            ),
            DetailProd(
              image: 'assets/images/skintific_toner.png',
              prodName: "Skintific Pure Centella Acne",
              prodDetail: "Acne Calm, Oil-control",
              activeIng: 'Cebtella Asiatica, Ectoin, Ceramide',
            ),
          ],
        )),
      ),
    );
  }
}
