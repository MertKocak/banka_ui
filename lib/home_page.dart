import 'package:banka/constants.dart';
import 'package:banka/drawer.dart';
import 'package:banka/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// current selected
int current = 0;

// handle indicator
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}


class HomePage extends StatefulWidget {
  
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: DrawerWidget(),
      backgroundColor: Constants.beyaz,
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _key.currentState!.openDrawer();
                        setState(() {});
                      },
                      icon: Icon(Icons.menu),
                    ),
                    Icon(
                      Icons.logout_rounded,
                      size: 35,
                      color: Constants.mavi,
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hoşgeldiniz!",
                      style: TextStyle(
                          fontFamily: "raleM",
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Constants.siyah)),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Mert Koçak",
                      style: TextStyle(
                          fontFamily: "raleB",
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Constants.siyah)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 16),
              child: Text("Kartlarım",
                  style: TextStyle(
                      fontFamily: "raleM",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Constants.siyah)),
            ),
            Container(
              height: 199,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 16),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20,
                              top: 15,
                              child: Text(CardInfo[0],
                                  style: const TextStyle(
                                      fontFamily: "raleB",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 20,
                              top: 128,
                              child: Text(CardInfo[1],
                                  style: const TextStyle(
                                      fontFamily: "raleB",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 20,
                              top: 150,
                              child: Text(CardInfo[3],
                                  style: const TextStyle(
                                      fontFamily: "raleM",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 30,
                              top: 80,
                              child: Text(CardInfo[2],
                                  style: const TextStyle(
                                      fontFamily: "raleM",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 220,
                              top: 135,
                              child: Container(
                                  height: 35, child: Image.asset(CardInfo[4])),
                            ),
                            Positioned(
                              left: 260,
                              top: 35,
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Constants.kmavi,
                                ),
                              ),
                            ),
                          ],
                        ),
                        height: 180,
                        width: 290,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Constants.mavi,
                                  Constants.kmavi,
                                ]),
                            borderRadius: BorderRadius.circular(28),
                            color: Constants.kmavi),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20,
                              top: 15,
                              child: Text(CardInfo[0],
                                  style: const TextStyle(
                                      fontFamily: "raleB",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 20,
                              top: 128,
                              child: Text(CardInfo[1],
                                  style: const TextStyle(
                                      fontFamily: "raleB",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 20,
                              top: 150,
                              child: Text(CardInfo[3],
                                  style: const TextStyle(
                                      fontFamily: "raleM",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 30,
                              top: 80,
                              child: Text(CardInfo[2],
                                  style: const TextStyle(
                                      fontFamily: "raleM",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            Positioned(
                              left: 220,
                              top: 135,
                              child: Container(
                                  height: 35, child: Image.asset(CardInfo[4])),
                            ),
                            Positioned(
                              left: 260,
                              top: 35,
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Constants.mavi,
                                ),
                              ),
                            ),
                          ],
                        ),
                        height: 180,
                        width: 290,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Constants.kmavi,
                                  Constants.mavi,
                                ]),
                            borderRadius: BorderRadius.circular(28),
                            color: Constants.mavi),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Text("İşlemler",
                      style: TextStyle(
                          fontFamily: "raleM",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Constants.siyah)),
                ],
              ),
            ),
            Container(
              height: 124,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  padding: EdgeInsets.only(left: 16, right: 10),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        OperationCards(0),
                        OperationCards(1),
                        OperationCards(2),
                        OperationCards(3),
                        OperationCards(4),
                        OperationCards(5),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget OperationCards(int i) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 8),
      width: 124,
      height: 124,
      decoration: BoxDecoration(
        border: Border.all(color: Constants.mavi, width: 3),
        boxShadow: [
          BoxShadow(
            color: Constants.kmavi,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Constants.kmavi, Constants.kmavi]),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                opimage[i],
                height: 50,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Text(operations[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "raleR",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/* class OperationCards extends StatefulWidget {
 final String operation;
  final String selectedIcon;
 final  String unselectedIcon;
 final  bool isSelected;

  OperationCards(
      this.operation,
       this.selectedIcon,
      this.unselectedIcon,
     this.isSelected);

  @override
  State<OperationCards> createState() => _OperationCardsState();
}

class _OperationCardsState extends State<OperationCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 124,
      height: 124,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: constants.kmavi,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(8, 8),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: widget.isSelected ? constants.kmavi : Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(widget.isSelected ? opimage[0]:opimage[0],color: Colors.white),
          Text(operations[0]),
          ],
        
      ),
    );
  }
} */
