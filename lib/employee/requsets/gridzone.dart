import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:insight/employee/empgate.dart';
import 'package:intl/intl.dart';
import 'package:flutter/rendering.dart';

class MyGridZonePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyGridZonePage> {
  final format = DateFormat("dd-MM-yyyy");
  TextEditingController dateController;
  String getter;

  List slotItems = [
    "8:30 TO 9:30",
    "9:30 TO 10:30",
    "10:30 TO 11:30",
    "11:30 TO 12:30",
    "12:30 TO 13:30",
    "13:30 TO 14:30"
  ];
  String selectedSlots;

  DatabaseReference dbRef;

  Map data;

  List docsdata;

  // ignore: unused_field

  @override
  void initState() {
    dateController = TextEditingController();
    super.initState();
    dbRef =
        FirebaseDatabase.instance.reference().child('GRID-EXP-Zone-Requests');
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
        //scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Time Slots for Exp',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                DateTimeField(
                  autofocus: true,
                  controller: dateController,
                  format: format,
                  onShowPicker: (context, currentValue) {
                    return showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        initialDate: DateTime.now(),
                        lastDate: DateTime(2100));
                  },
                  decoration: InputDecoration(
                    hintText: 'Pick a Date',
                    suffix: Icon(Icons.calendar_today_rounded),
                    border: OutlineInputBorder(),
                  ),
                ),
                DropdownButton(
                  itemHeight: 50,
                  hint: Text('Select Slot'),
                  icon: Icon(Icons.arrow_circle_down_rounded),
                  value: selectedSlots,
                  onChanged: (newValue) {
                    setState(() {
                      selectedSlots = newValue;
                    });
                    getter = dateController.text.trim() + '+' + selectedSlots;
                    /*  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ExpApplyOrNot(
                                  getter: getter,
                                )));*/
                  },
                  items: slotItems.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
                /*FirebaseAnimatedList(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  query: dbRef,
                  //.equalTo(DateTime.now()),
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map reqList = snapshot.value;
                    return buildBookedSlotList(requestRaised: reqList);
                  },
                ),*/
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text(
          'Apply ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        onPressed: () {
          applySlot();
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
    if (status == 'rejected') {
      statusColor = Colors.red[800];
    }
    if (status == 'approve') {
      statusColor = Colors.green[700];
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
                requestRaised['date'],
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

  void applySlot() {
    String dateApply = dateController.text.trim(),
        timeApply = selectedSlots.trim(),
        status = "pending",
        zone = "GRID ZONE";

    Map<String, dynamic> requestRaised = {
      'zone': zone,
      'date': dateApply,
      'time': timeApply,
      'empname': FirebaseAuth.instance.currentUser.displayName,
      'empmail': FirebaseAuth.instance.currentUser.email,
      'status': status,
      'uid': FirebaseAuth.instance.currentUser.uid,
      'getterid': dateController.text.trim() + '+' + selectedSlots,
    };
    dbRef.push().set(requestRaised);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Request Added Successfully"),
          actions: <Widget>[
            // ignore: deprecated_member_use
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => EmpGate()));
              },
            ),
          ],
        );
      },
    );
  }
}

//slot options for dropdown
// ignore: camel_case_types
class slotsOpt {
  int id;
  String slotName;

  static List<slotsOpt> getSlots() {
    return <slotsOpt>[
      slotsOpt(1, '8:30 TO 9:30'),
      slotsOpt(2, '9:30 TO 10:30'),
      slotsOpt(1, '10:30 TO 11:30'),
      slotsOpt(1, '11:30 TO 12:30'),
      slotsOpt(1, '12:30 TO 13:30'),
      slotsOpt(1, '13:30 TO 14:30'),
    ];
  }

  slotsOpt(this.id, this.slotName);
}
