import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:skin_app/screens/catalog_screen.dart';
import 'package:skin_app/screens/news_screen.dart';
import 'package:skin_app/screens/review_screen.dart';
import 'package:skin_app/screens/routes/detailScreen/detail_screen.dart';
import 'package:skin_app/screens/routes/detailScreen/detail_serums.dart';
import 'package:skin_app/screens/routes/detailScreen/detail_suns.dart';
import 'package:skin_app/screens/routes/detailScreen/detail_toner.dart';
import 'package:skin_app/screens/routes/detailScreen/detail_fw.dart';
import 'package:skin_app/screens/routes/productScreen/product_screen.dart';
import 'package:skin_app/screens/skin_deal.dart';
import 'package:skin_app/screens/pofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // home: const MyHomePage(title: 'Skindeal'),
      home: SkinDeal(),
      routes: {
        '/profile-screen': (context) => Pofile(),
        '/review-screen': ((context) => ReviewScreen()),
        '/catalog-screen': (context) => CatalogScreen(),
        '/detail-screen': (context) => DetailScreen(),
        '/detail-toner': (context) => DetailToner(),
        '/detail-fw': (context) => DetailFw(),
        '/detail-sun': (context) => DetailSuns(),
        '/detail-serum': (context) => DetailSerums(),
        '/news-screen': (context) => NewsScreen(),
        '/crud-screen': (context) => ProductScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal[400],
      ),
    );
  }
}
