import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('STELA'),
          backgroundColor: primaryBar,
          leading: FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.arrow_back,
                color: primaryWhite,
              )),
        ),
        backgroundColor: primaryWhite,
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Text('CONTACT US',
                      style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.bold)),
                  margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: Text('FACING ISSUES IN THE APP ?',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                      color: primaryButton,
                      border: Border.all(width: 1, color: primaryBar),
                      borderRadius: BorderRadius.circular(20),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                  child: Text(
                      'For any Query or Suggestions you can contact us through E-mail.',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Mandorlato',
                          fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2.0, color: primaryBar),
                      ),
                      child: Text(
                        'WRITE TO US',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Mandorlato',
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  onPressed: () {},
                ),
              ],
            )),
      ),
    );
  }
}