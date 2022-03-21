import 'package:banka/constants.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String name = "Mert Koçak";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Constants.kmavi,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              accountName: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(name,
                    style: TextStyle(
                        color: Constants.beyaz,
                        fontSize: 20,
                        fontFamily: "raleB")),
              ),
              accountEmail: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Bireysel Hesap",
                  style: TextStyle(
                      color: Constants.beyaz,
                      fontSize: 18,
                      fontFamily: "raleB"),
                ),
              ),
              currentAccountPicture: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  backgroundColor: Constants.mavi,
                  child: Text(
                    name[0],
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: "raleB",
                        color: Constants.kmavi),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle_rounded,
                  color: Constants.kmavi,
                  size: 36,
                ),
                title: Text(
                  "Hesabım",
                  style: TextStyle(
                      color: Constants.kmavi,
                      fontFamily: "raleM",
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {
                  /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => MyAccount())),
                  ); */
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.black,
                  size: 34,
                ),
                title: Text("Sıkça Sorulan Sorular",
                    style: TextStyle(
                        color: Constants.kmavi,
                        fontFamily: "raleM",
                        fontWeight: FontWeight.w700)),
                onTap: () {
                  /* Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: ((context) => HomePage())),
                      (route) => false); */
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone_rounded,
                  color: Constants.kmavi,
                  size: 34,
                ),
                title: Text(
                  "Müşteri Hizmetleri",
                  style: TextStyle(
                      color: Constants.kmavi,
                      fontFamily: "raleM",
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {
                  /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => MyAccount())),
                  ); */
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.black,
                  size: 34,
                ),
                title: Text("Çıkış",
                    style: TextStyle(
                        color: Constants.kmavi,
                        fontFamily: "raleM",
                        fontWeight: FontWeight.w700)),
                onTap: () {
                  /* Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: ((context) => HomePage())),
                      (route) => false); */
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
