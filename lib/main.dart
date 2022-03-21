import 'package:flutter/material.dart';
import 'home_page.dart';

var CardInfo = [
  "Ziraat Bankası",
  "Mert Koçak",
  "5282 0802 4554 ****",
  "IBAN: TR 6800 0100 2123 5767 **** ****",
  "assets/images/mastercard.png",
];

var operations = [
  "Para Transferi",
  "Ödemeler",
  "Krediler",
  "Sigorta",
  "Döviz",
  "Yatırım"
];

var opimage = [
  "assets/images/moneyTra.png",
  "assets/images/odeme.png",
  "assets/images/krediler.png",
  "assets/images/sigorta.png",
  "assets/images/doviz.png",
  "assets/images/yatirim.png"
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
