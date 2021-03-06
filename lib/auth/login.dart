import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:insight/employee/empgate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginUser extends StatefulWidget {
  LoginUserState createState() => LoginUserState();
}

class LoginUserState extends State {
  bool visible = false;
  String emailid, password;

  final auth = FirebaseAuth.instance;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final passwordFocusNode = FocusNode();

  String animationType = "idle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 300,
                  width: 300,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: FlareActor(
                        "assets/Teddy.flr",
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: animationType,
                      ),
                    ),
                    backgroundColor: Colors.blue[600],
                  ),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('User Login Form', style: TextStyle(fontSize: 21)),
              ),*/
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  onTap: () {
                    setState(() {
                      animationType = "success";
                    });
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
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  onTap: () {
                    setState(() {
                      animationType = "fail";
                    });
                  },
                  controller: passwordController,
                  obscureText: true,
                  focusNode: passwordFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Password',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () async {
                      /*context.read<AuthService>().signIn(
                          empmail: emailController.text.trim(),
                          pass: passwordController.text.trim());*/
                      try {
                        setState(() {
                          visible = true;
                        });
                        await auth
                            .signInWithEmailAndPassword(
                          email: emailid,
                          password: password,
                        )
                            .then((_) async {
                          var user = auth.currentUser;
                          if (user.emailVerified) {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => EmpGate()));
                          } else {
                            setState(() {
                              visible = false;
                            });
                            emailController.clear();
                            passwordController.clear();
                            Fluttertoast.showToast(
                                msg: "Unverified Email!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                        });
                      } on FirebaseException catch (e) {
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
                      /* auth.signInWithEmailAndPassword(
                          email: emailid, password: password);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => MyMainPage()));*/
                    },
                    color: Colors.blue[600],
                    elevation: 5,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  // ignore: deprecated_member_use
                  /* RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterUser()));
                    },
                    color: Colors.blue[600],
                    elevation: 5,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                    child: Text(
                      'signup',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),*/
                ],
              ),
              Visibility(
                  visible: visible,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: CircularProgressIndicator())),
            ],
          ),
        )));
  }
}
