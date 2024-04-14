import 'package:flutter/material.dart';
import 'package:skin_app/components/asset_image_widget.dart';

class DetailProd extends StatelessWidget {
  const DetailProd({
    Key? key, 
    required this.image, 
    required this.prodName, 
    required this.prodDetail, 
    required this.activeIng,
    
  }) : super(key: key);

  final String image, prodName, prodDetail, activeIng;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
        children: [
              SizedBox(
                width: 100,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      // color: Colors.grey[300],
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFE0F2F1),
                          Color(0xFF80CBC4).withOpacity(0.6),
                        ]
                        ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:AssetImageWidget(
                      imagePath: image),
                  ),
                  ),
              ),
              SizedBox(
                width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(prodName,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                  ),
                  maxLines: 2,
                  ),
            
                  Text(prodDetail,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600] 
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  Text("Active Ingredient: \n$activeIng",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600] 
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    ),
                ],
              )
          
            ],
      ),
    );
  }
}