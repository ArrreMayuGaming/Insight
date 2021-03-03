import 'package:flutter/material.dart';

class MymobilityPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MymobilityPage> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: MediaQuery.of(context).size.height * 0.07,
        ),
      ),
      
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Hero(
                          tag: 'mobility',
                          child: Image.asset(
                            'assets/ismacPng/m2.png',
                            height: MediaQuery.of(context).size.height * 0.12,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 20,
                          child: Text(
                            "MOBILITY",
                            style: TextStyle(
                              fontSize: 40,
                              color: const Color(0xff47455f),
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          'A Seamless Transition',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        Text(
                          'Implementing a mobile organization calls for a robust enterprise mobile strategy and consulting partner, to build a roadmap for your future-ready mobile enterprise.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Image.asset('assets/mobility2.jpg'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Gaining an Edge',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 10,
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Divider(color: Colors.black38),
                              Text(
                                'Cloud-based services are ideal for businesses with growing or fluctuating demands. The level of agility using Cloud computing can give businesses a real advantage. Businesses are moving towards Cloud for many applications.',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 10,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Image.asset('assets/mobility1.jpg'),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Text(
                            'Our Mobile & Wireless Solutions not only cater to various industries such as Healthcare, Pharmaceuticals, Logistics and Retail, but its framework can also adopted by any business model.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
