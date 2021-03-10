import 'package:flutter/material.dart';
import 'package:insight/animations/fadeanimation.dart';
import 'package:insight/employee/requsets/expzone.dart';
import 'package:insight/employee/requsets/facetime.dart';
import 'package:insight/employee/requsets/gridzone.dart';

class MyZonesOptPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyZonesOptPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: size.height * 0.06,
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            children: [
              //security container
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyGridZonePage();
                  }));
                },
                child: FadeAnimation(
                  1,
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 30),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/ismacPng/a.png',
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Grid Zone",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              //mobility container
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyExpZonePage();
                  }));
                },
                child: FadeAnimation(
                  1,
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/ismacPng/m.png',
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Experience Zone",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              //security container
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyFaceTimeZonePage();
                  }));
                },
                child: FadeAnimation(
                  1,
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 30),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/ismacPng/s.png',
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "FaceTime",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              /* //mobility container
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyExpZonePage();
                  }));
                },
                child: FadeAnimation(
                  1,
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 20),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/ismacPng/m.png',
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Experience Zone",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ),
              ),*/
            ],
          ),
        ],
      )),
    );
  }
}
