import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:animated_text/animated_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:insight/animations/fadeanimation.dart';
import 'package:insight/commonuser/casepage.dart';
import 'package:insight/commonuser/ismac/analytics.dart';
import 'package:insight/commonuser/ismac/cloud.dart';
import 'package:insight/commonuser/ismac/infrastructure.dart';
import 'package:insight/commonuser/ismac/mobility.dart';
import 'package:insight/commonuser/maindrawer.dart';
import 'package:insight/commonuser/mngt.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ismac/security.dart';

class CommonGate extends StatefulWidget {
  @override
  _CommonGateState createState() => _CommonGateState();
}

class _CommonGateState extends State<CommonGate> {
  bool textAnimating = true;

  final List carouselList = [
    'assets/partners/1.jpg',
    'assets/partners/2.jpg',
    'assets/partners/3.jpg',
    'assets/partners/4.jpg',
    'assets/partners/5.jpg',
    'assets/partners/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0))),
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: MediaQuery.of(context).size.height * 0.06,
        ),
      ),
      drawer: MainDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      //animated text and after animated text
                      Container(
                        padding: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        height: size.height * 0.25,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0, // soften the shadow
                                //spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ]),
                        child: !textAnimating
                            ? FadeAnimation(
                                1,
                                Column(
                                  children: <Widget>[
                                    /*  Text(
                                      'We are',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),*/
                                    Text(
                                      'Insight Business Machines \nPvt. Ltd.',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/ismac.png',
                                      height: size.height * 0.15,
                                    )
                                  ],
                                ),
                              )
                            : AnimatedText(
                                alignment: Alignment.center,
                                speed: Duration(milliseconds: 1000),
                                controller: AnimatedTextController.play,
                                repeatCount: 1,
                                displayTime: Duration(milliseconds: 1000),
                                wordList: [
                                  'We',
                                  'are',
                                  'Insight',
                                  'We',
                                  'Inspire',
                                  'Lives!'
                                ],
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                ),
                                onFinished: () {
                                  setState(() {
                                    textAnimating = false;
                                  });
                                },
                              ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          //infra container
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, a, b) =>
                                          MyInfraPage()));
                            },
                            child: FadeAnimation(
                              1,
                              Container(
                                margin: EdgeInsets.only(top: 20.0, left: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.18,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Column(children: <Widget>[
                                  Hero(
                                    tag: 'infra',
                                    child: Image.asset(
                                      'assets/ismacPng/i2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.12,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "INFRASTRUCTURE",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    'Build modern day Infrastructure',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          //security & mobility
                          Center(
                            child: Row(
                              children: [
                                //security container
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                MysecurityPage()));
                                  },
                                  child: FadeAnimation(
                                    2,
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 20.0, left: 30),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.18,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                            ),
                                          ]),
                                      child: Column(
                                        children: [
                                          Hero(
                                            tag: 'security',
                                            child: Image.asset(
                                              'assets/ismacPng/s2.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "SECURITY",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            'Enhance your Protection',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                //mobility container
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                MymobilityPage()));
                                  },
                                  child: FadeAnimation(
                                    2,
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 20.0, left: 20),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.18,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                            ),
                                          ]),
                                      child: Column(
                                        children: [
                                          Hero(
                                            tag: 'mobility',
                                            child: Image.asset(
                                              'assets/ismacPng/m2.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "MOBILITY",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            'A Seamless Transition',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //ananlytics & cloud
                          Center(
                            child: Row(
                              children: [
                                //analytics container
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                MyAnalyticsPage()));
                                  },
                                  child: FadeAnimation(
                                    3,
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20.0, left: 30.0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.18,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                            ),
                                          ]),
                                      child: Column(
                                        children: [
                                          Hero(
                                            tag: 'analytics',
                                            child: Image.asset(
                                              'assets/ismacPng/a2.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "ANALYTICS",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            'Monetizing your Data',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                //cloud container
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                MycloudPage()));
                                  },
                                  child: FadeAnimation(
                                    3,
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20.0, left: 20.0),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.18,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5.0,
                                            ),
                                          ]),
                                      child: Column(
                                        children: [
                                          Hero(
                                            tag: 'cloud',
                                            child: Image.asset(
                                              'assets/ismacPng/c2.png',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "CLOUD",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            'Intelligence to the Core',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          //our partners headline
                          Center(
                            child: Text(
                              'OUR PARTNERS',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          //carousel
                          CarouselSlider(
                            items: carouselList.map((i) {
                              return Builder(builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.blue[900],
                                          Colors.red[700],
                                        ]),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueGrey,
                                      )
                                    ],
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Image.asset(
                                    i,
                                    height: MediaQuery.of(context).size.height,
                                  ),
                                );
                              });
                            }).toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              // width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.2,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                //case studies
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                CaseStudyDetails()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10.0),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[600],
                                        borderRadius: BorderRadius.circular(25),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5.0,
                                              offset: Offset(0.0, 5.0),
                                              color: Colors.grey),
                                        ]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Must Read Our \nCASE STUDIES",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Image.asset(
                                          'assets/casestudy.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.12,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                //mngt team
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (context, a, b) =>
                                                MngtTeamPage()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10.0),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[600],
                                        borderRadius: BorderRadius.circular(25),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5.0,
                                              offset: Offset(0.0, 5.0),
                                              color: Colors.grey),
                                        ]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Meet Our \nManagement Team",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Image.asset(
                                          'assets/teammngt.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                //know more
                                Text(
                                  "Know More About Us!",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Divider(color: Colors.black),
                                //what we do?
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            offset: Offset(0.0, 5.0),
                                            color: Colors.grey),
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            'What We Do?',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Image.asset(
                                            'assets/whatwedo.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Right from assessment and design, to deployment and management as well as delivering 'On Demand' services for clients as well as customers, Insight undertakes all types of turnkey projects. We specifically emphasize on creating a digital transformation, delivering innovative solutions to build a smart city and upholding people's safety as a top priority.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Our highly skilled domain specialists work together with the company's team, walking with them as they get acclimatised to new environments and explore unique possibilities to achieve their business goals. Our 24x7 service and nationwide nexus ensures that we are available to our clients anytime, anywhere.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                //our Strength
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            offset: Offset(0.0, 5.0),
                                            color: Colors.grey),
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            'Our Strength!',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Image.asset(
                                            'assets/strength.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Today, with operations conducted all across India, workforce strength of 210+ employees, a reach that spans nationally as well as internationally and a repertoire of clients that include some of the top companies in the Indian industry, Insight has emerged to be one of the best success stories in the IT industry.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Our highly motivated team of employees have helped in giving us a journey filled with tremendous enthusiasm, a strong belief to fulfil and deliver our commitments towards our associates, our customers, our society and to our nation.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                //financia promience
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            offset: Offset(0.0, 5.0),
                                            color: Colors.grey),
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            'Financial \nProminence!',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Image.asset(
                                            'assets/financial.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Our organization has grown exceptionally in terms of technology as well as financial strength. Taking all the assets and monetary capital into consideration, the net worth of Insight Business Machines has seen a consistent rise, thereby making us one of the biggest influencers in the IT industry.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                //market positining
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            offset: Offset(0.0, 5.0),
                                            color: Colors.grey),
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            'Market \nPositioning',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Image.asset(
                                            'assets/marketpos.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "We feel immensely proud to be accredited with ISO 9001:2015, ISO 20000-1:2011 and ISO 27001:2013 certifications. Pursuing excellence has not only benefited our customers but also won us many awards and accolades. Likewise, we intend to create our own space in the IT sector by unleashing a number of initiatives and reliable strategies that will spell success in bold for our clients and our renowned partners as well.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                //our usp
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.0,
                                            offset: Offset(0.0, 5.0),
                                            color: Colors.grey),
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            "Our USPs",
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Image.asset(
                                            'assets/ourusp.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Our ultimate creation i.e. ISMAC (Infrastructure, Security, Mobility, Analytic and Cloud) is an all-encompassing solution that spans across five core spectrums of new-age technology and has been receiving rave reviews from the industry experts and customers alike.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Our primary core unit, TCT i.e. Technology Consulting Team was formed with an objective to provide professional services and optimal solutions that will progressively increase the growth and efficiency of an enterprise.",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          //follow us on
                          Text(
                            "Follow Us On",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          //social media icons and link
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 5.0,
                                        offset: Offset(0.0, 5.0),
                                        color: Colors.grey),
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  IconButton(
                                    icon:
                                        FaIcon(FontAwesomeIcons.facebookSquare),
                                    onPressed: () async {
                                      const url =
                                          'https://www.facebook.com/InsightBusinessMachines/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  IconButton(
                                    icon:
                                        FaIcon(FontAwesomeIcons.twitterSquare),
                                    onPressed: () async {
                                      const url = 'https://twitter.com/ibmpl';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  IconButton(
                                    icon: FaIcon(FontAwesomeIcons.linkedin),
                                    onPressed: () async {
                                      const url =
                                          'https://in.linkedin.com/company/insight-business-machines-pvt-ltd-';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  IconButton(
                                    icon:
                                        FaIcon(FontAwesomeIcons.youtubeSquare),
                                    onPressed: () async {
                                      const url =
                                          'https://www.youtube.com/channel/UCHlV55_bzqkOjvkMQSdavXg';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
