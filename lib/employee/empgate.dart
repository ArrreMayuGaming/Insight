import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insight/commonuser/commongate.dart';

class EmpGate extends StatefulWidget {
  @override
  _EmpGateState createState() => _EmpGateState();
}

class _EmpGateState extends State<EmpGate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // ignore: deprecated_member_use
          child: RaisedButton(
        onPressed: () {FirebaseAuth.instance.signOut().then((_) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => CommonGate()));
                    });},
        child: Text('Logout'),
      )),
    );
  }
}
