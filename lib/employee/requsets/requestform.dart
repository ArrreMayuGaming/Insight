import 'package:flutter/material.dart';

class RequestFormPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<RequestFormPage> {
  final _formKey = GlobalKey<FormState>();

  bool visible = false;

  final TextEditingController empcodeController = TextEditingController();
  final TextEditingController empnameController = TextEditingController();
  final TextEditingController empmailController = TextEditingController();
  final TextEditingController mngrController = TextEditingController();
  final TextEditingController roomController = TextEditingController();
  final TextEditingController datetimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {Size size = MediaQuery.of(context).size;
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

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
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.width * 1.5,
            decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                  ),
                ]),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Center(
                    child: Text(
                      'Request Form',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          width: halfMediaWidth - 16,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: empcodeController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your Insight ID';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Insight ID',
                                contentPadding: EdgeInsets.all(15.0),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          width: halfMediaWidth - 6,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: empnameController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please Enter Your Name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: 'Name',
                                contentPadding: EdgeInsets.all(15.0),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.grey[200],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: empmailController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your Email ID';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Insight Email ID',
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: roomController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Zone Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Zone ',
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: datetimeController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Date n Time';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Date n Time',
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: mngrController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter Your Reason';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Reason',
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                      }
                    },
                    color: Colors.red,
                    child: Text(
                      'Raise Request',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: visible,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
