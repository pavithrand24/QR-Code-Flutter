import 'package:flutter/material.dart';
import 'package:qrcode/generate.dart';
import 'package:qrcode/scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0),
            Row(children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 15.0, top: 0.0)),
              GestureDetector(
                child: Image.asset(
                  'assets/set3.png',
                  height: 33.0,
                  width: 33.0,
                  alignment: Alignment.centerLeft,
                  colorBlendMode: BlendMode.clear,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 257.0, top: 0.0)),
              GestureDetector(
                child: Image.asset(
                  'assets/ac.png',
                  height: 40.0,
                  width: 40.0,
                  alignment: Alignment.centerLeft,
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ]),
            SizedBox(height: 450.0),
            Row(
              //ROW 1
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 34.0, right: 0.0)),
                flatButton("Scan QR CODE", ScanPage()),
                SizedBox(
                  width: 20.0,
                ),
                flatButton("Generate QR CODE", GeneratePage()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      color: Color.fromRGBO(100, 166, 189, 1.0),
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 3.0),
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
