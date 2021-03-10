import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:insight/employee/requsets/zonesopt.dart';

class RequestPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<RequestPage> {
  DatabaseReference dbRef;
  final ref = FirebaseDatabase.instance
      .reference()
      .child('GRID-EXP-Zone-Requests')
      .orderByChild('empname')
      .equalTo(FirebaseAuth.instance.currentUser.displayName);

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.reference();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: size.height * 0.06,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Your Previous Requests',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                FirebaseAnimatedList(
                  //scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  query: ref,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map reqList = snapshot.value;
                    return buildBookedSlotList(requestRaised: reqList);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.edit),
        label: Text(
          'Raise ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyZonesOptPage()));
        },
      ),
    );
  }

//FUNCTION TO GIV COLOR CODE TO STATUS
  Color statusColor(String status) {
    Color statusColor = Colors.black;
    if (status == 'pending') {
      statusColor = Colors.yellow;
    }
    if (status == 'Rejected') {
      statusColor = Colors.red[800];
    }
    if (status == 'approve') {
      statusColor = Colors.green;
    }

    return statusColor;
  }

//WIDGET O BUILD FIREBASE LIST
  Widget buildBookedSlotList({Map requestRaised}) {
    Color stausTypeColor = statusColor(requestRaised['status']);
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.deepOrange[100],
          borderRadius: BorderRadius.circular(25.0)),
      height: 100, //MediaQuery.of(context).size.height * 0.09,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    requestRaised['empname'],
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 16.0),
                  ),
                ],
              ),
              Text(
                requestRaised['status'],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: stausTypeColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                requestRaised['empmail'],
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.0),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'on ' + requestRaised['date'],
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.0),
              ),
              Text(
                'at ' + requestRaised['time'],
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.0),
              ),
              Text(
                'at ' + requestRaised['zone'],
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
