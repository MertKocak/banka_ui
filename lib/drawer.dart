import 'package:banka/constants.dart';
import 'package:banka/main.dart';
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
        color: Constants.beyaz,
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
                  lng ? "Bireysel Hesap" : "Individual Account",
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
                  lng ? "Hesabım" : "My Account",
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
                  color: Constants.kmavi,
                  size: 34,
                ),
                title: Text(
                    lng
                        ? "Sıkça Sorulan Sorular"
                        : "Frequently Asked Questions",
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
                  lng ? "Müşteri Hizmetleri" : "Customer service",
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
                  color: Constants.kmavi,
                  size: 34,
                ),
                title: Text(lng ? "Çıkış" : "Logout",
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
                  Icons.language,
                  color: Constants.kmavi,
                  size: 34,
                ),
                title: Text(lng ? "English" : "Türkçe",
                    style: TextStyle(
                        color: Constants.kmavi,
                        fontFamily: "raleM",
                        fontWeight: FontWeight.w700)),
                onTap: () {
                  lng = !lng;
                  debugPrint(lng.toString());
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
