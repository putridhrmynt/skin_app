import 'package:flutter/material.dart';
// import 'package:skin_app/components/asset_image_widget.dart';
import 'package:skin_app/components/page_top.dart';
import 'package:skin_app/components/review_widget.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTop(text: "Your Review"),
            ReviewWidget(
                prodImage: "assets/images/cosrx_toner.png",
                prodName: "COSRX Centella Toner",
                prodDetail: "Non-alcohol, skin barrier friendly.",
                initialLikeCount: 1523,
                initialDislikeCount: 30),
            ReviewWidget(
                prodImage: "assets/images/originote_moist.png",
                prodName: "The Originote Hyalucera",
                prodDetail: "Gel, calimg, centella.",
                initialLikeCount: 1236,
                initialDislikeCount: 256),
            ReviewWidget(
                prodImage: "assets/images/emina_moist.png",
                prodName: "Emina Bright Stuff",
                prodDetail: "Whitening, moisturizing.",
                initialLikeCount: 682,
                initialDislikeCount: 469),
            ReviewWidget(
                prodImage: "assets/images/azarine_suns.png",
                prodName: "Azarine Sunscreen",
                prodDetail: "SPF 45 PA+++",
                initialLikeCount: 985,
                initialDislikeCount: 194),
            ReviewWidget(
                prodImage: "assets/images/vaseline_balm.png",
                prodName: "Vaseline Lip Teraphy Rosy",
                prodDetail: "Pinkish lip balm.",
                initialLikeCount: 1143,
                initialDislikeCount: 81),
            ReviewWidget(
                prodImage: "assets/images/senka_fw.png",
                prodName: "Senka Facial Wash Fresh",
                prodDetail: "Uji Green Tea",
                initialLikeCount: 718,
                initialDislikeCount: 18),
            ReviewWidget(
                prodImage: "assets/images/skintific_moist.png",
                prodName: "Skintific 5X Ceramides",
                prodDetail: "Gel, Ceramides, Calming",
                initialLikeCount: 1173,
                initialDislikeCount: 274),
            ReviewWidget(
                prodImage: "assets/images/you_acne.png",
                prodName: "YOU Acne Spot Treatment",
                prodDetail: "Acne Plus Spot-X Care",
                initialLikeCount: 837,
                initialDislikeCount: 79),
          ],
        ),
      ),
    );
  }
}
