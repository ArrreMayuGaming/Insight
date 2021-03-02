import 'package:flutter/material.dart';
import 'package:insight/commonuser/maindrawer.dart';

class MysecurityPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MysecurityPage> {
  @override
  Widget build(BuildContext context) {
    /* return new Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Inspire Lives!"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            child: SingleChildScrollView(
              child: Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      "assets/ismacColored/s.png",
                      height: 80,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "SECURITY",
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "ENHANCE YOUR PROTECTION",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/security1.jpg"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Our next-gen information security & compliance programs can keep your computers safe from rootkits, viruses and trojans while also improving cost-effectiveness, flexibility and agility of your business network.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "SECURE  YOUR ENTERPRISE",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/security2.jpg"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Insight’s Security & Privacy framework helps the customer understand in-depth information risk in internal access level, external/internal threats, internet at physical level, while giving protection across the entire IT infrastructure without adding unnecessary cost and complexity.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );*/
    return Scaffold(
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
                          tag: 'security',
                          child: Image.asset(
                            'assets/ismacPng/s2.png',
                            height: MediaQuery.of(context).size.height * 0.12,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/ismacColored/s.png",
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                              ),
                              Text(
                                "SECURITY",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: const Color(0xff47455f),
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Enhance your Protection',
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        Text(
                          'Meeting complex security needs resulting from disruptive technologies such as big data, cloud, social and mobile using our global experience.',
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
                        Image.asset('assets/security2.jpg'),
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
                                'Secure your Enterprise',
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
                                'Nowadays high technology environment, organizations are becoming more and more dependent on their information systems. Businesses get converged into information and now eventually everything is getting consolidated to Digital. This makes information, and hence businesses more vulnerable to threats & intrusion.',
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
                        Image.asset('assets/security1.jpg'),
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
                            'Our framework helps the customer understand in-depth information risk in internal access level, external/internal threats, internet at physical level, while giving protection across the entire IT infrastructure without adding unnecessary cost and complexity.',
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
