import 'package:flutter/material.dart';
// import 'package:skin_app/components/asset_image_widget.dart';
import 'package:skin_app/components/detail_widget.dart';

class DetailSuns extends StatelessWidget {
  // static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sunscreen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailProd(
              image: 'assets/images/azarine_suns.png',
              prodName: "Azarine Hydrasoothe SS",
              prodDetail: "SPF45 PA++++, gel",
              activeIng: 'Aloe Barbandesis',
            ),
            DetailProd(
              image: 'assets/images/you_suns.png',
              prodName: "YOU Sunbrella Tone Up Elixir",
              prodDetail: "SPF 50+ PA++++",
              activeIng: 'Shea Butter, Titanium Dioxide',
            ),
            DetailProd(
              image: 'assets/images/originote_suns.png',
              prodName: "Originote Ceramella Sunscreen",
              prodDetail: "SPF 50 PA+++, hybrid",
              activeIng: 'Ceramide, Tremella, Vitamin C',
            ),
            DetailProd(
              image: 'assets/images/emina_suns.png',
              prodName: "Emina Sun Battle",
              prodDetail: "SPF 30 PA+++",
              activeIng: 'Cendulla Extract, Hyaluronic Acid',
            ),
            DetailProd(
              image: 'assets/images/anessa_suns.png',
              prodName: "Anessa Perfect UV Milk",
              prodDetail: "SPF 50+ PA++++",
              activeIng: 'Tinosorb S (UV Filters)',
            ),
          ],
        )),
      ),
    );
  }
}
