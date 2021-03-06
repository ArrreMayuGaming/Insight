import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insight/auth/login.dart';

import 'package:fluttertoast/fluttertoast.dart';

class RegisterUser extends StatefulWidget {
  RegisterUserState createState() => RegisterUserState();
}

class RegisterUserState extends State<RegisterUser> {
  // Boolean variable for CircularProgressIndicator.
  bool visible = false;

  String empname, emailid, password, phonenum;

  final auth = FirebaseAuth.instance;

  // Getting value from TextField widget.
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SignUp')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('User Registration Form',
                      style: TextStyle(fontSize: 21))),
              Divider(),
              /*Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: nameController,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter Your Name Here'),
                  onChanged: (value) {
                    setState(() {
                      empname = value.trim();
                    });
                  },
                ),
              ),*/
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  onTap: () {
                    setState(() {});
                  },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email ID',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  onChanged: (value) {
                    setState(() {
                      emailid = value.trim();
                    });
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  onTap: () {
                    setState(() {});
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  onChanged: (value) {
                    setState(() {
                      empname = value.trim();
                    });
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  onTap: () {
                    setState(() {});
                  },
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  onChanged: (value) {
                    setState(() {
                      phonenum = value.trim();
                    });
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  onTap: () {
                    setState(() {});
                  },
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password length should be >6',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  onChanged: (value) {
                    setState(() {
                      password = value.trim();
                    });
                  },
                ),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () async {
                  /* await auth.createUserWithEmailAndPassword(
                      email: emailid, password: password);
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginUser()));*/

                  try {
                    setState(() {
                      visible = true;
                    });
                    await auth
                        .createUserWithEmailAndPassword(
                      email: emailid,
                      password: password,
                    )
                        .then((_) {
                      auth.currentUser.updateProfile(
                        displayName: empname.trim(),
                      );

                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginUser()));
                    });
                  } on FirebaseAuthException catch (e) {
                    setState(() {
                      visible = false;
                    });
                    Fluttertoast.showToast(
                        msg: e.message,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                color: Colors.deepOrange,
                elevation: 5,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                child: Text('Register Employee Online'),
              ),
              Visibility(
                  visible: visible,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: CircularProgressIndicator())),
            ],
          ),
        ),
      ),
    );
  }
}
