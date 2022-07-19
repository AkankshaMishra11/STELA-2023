import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
import 'package:stela_app/screens/subjects.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  String email = "", password = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryWhite,
        appBar: AppBar(
          title: Text('STELA'),
          backgroundColor: primaryBar,
          leading: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: primaryWhite,
              )),
        ),
        body: SingleChildScrollView(
          child: Container(
              // margin: EdgeInsets.symmetric(vertical: 80, horizontal: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'LOGIN CREDENTIALS',
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'PTSerif',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('EMAIL',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Enrollment Number",
                    ),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      child: Text('PASSWORD',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold)),
                      decoration: BoxDecoration(
                        color: primaryButton,
                        border: Border.all(width: 1, color: primaryBar),
                        borderRadius: BorderRadius.circular(20),
                      )),
                  Container(
                      child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                    ),
                  )),
                  TextButton(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        decoration: BoxDecoration(
                          color: primaryButton,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2.0, color: primaryBar),
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () async {
                      try {
                        final signUser = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (signUser != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Subjects()),
                          );
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
