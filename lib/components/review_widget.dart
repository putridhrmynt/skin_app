import 'package:flutter/material.dart';
import 'package:skin_app/components/asset_image_widget.dart';

class ReviewWidget extends StatefulWidget {
  final String prodImage;
  final String prodName;
  final String prodDetail;
  final int initialLikeCount;
  final int initialDislikeCount;

  const ReviewWidget({
    Key? key,
    required this.prodImage,
    required this.prodName,
    required this.prodDetail,
    required this.initialLikeCount,
    required this.initialDislikeCount,
  }) : super(key: key);

  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  bool _isLove = false;
  late int _loveCount;
  bool _dislikes = false;
  late int _dislikeCt;

  void _toggleLove() {
    setState(() {
      if (_isLove) {
        _loveCount -= 1;
        _isLove = false;
      } else {
        _loveCount += 1;
        _isLove = true;
        if (_dislikes) {
          _dislikeCt -= 1;
          _dislikes = false;
        }
      }
    });
  }

  void _toggleDis() {
    setState(() {
      if (_dislikes) {
        _dislikeCt -= 1;
        _dislikes = false;
      } else {
        _dislikeCt += 1;
        _dislikes = true;
        if (_isLove) {
          _loveCount -= 1;
          _isLove = false;
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _loveCount = widget.initialLikeCount;
    _dislikeCt = widget.initialDislikeCount;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFE0F2F1),
                            Color(0xFF80CBC4).withOpacity(0.6),
                          ]),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: AssetImageWidget(imagePath: widget.prodImage),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.prodName,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    maxLines: 2,
                  ),
                  Text(
                    widget.prodDetail,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: (_isLove
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.pink,
                              )
                            : const Icon(Icons.favorite_border)),
                        onPressed: _toggleLove,
                      ),
                      Text("$_loveCount"),
                      IconButton(
                        icon: (_dislikes
                            ? const Icon(
                                Icons.heart_broken,
                                color: Colors.blueGrey,
                              )
                            : const Icon(Icons.heart_broken_outlined)),
                        onPressed: _toggleDis,
                      ),
                      Text("$_dislikeCt")
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
