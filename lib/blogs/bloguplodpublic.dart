import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insight/employee/empgate.dart';
import 'package:intl/intl.dart';

class UploadBlogPublic extends StatefulWidget {
  @override
  _UploadBlogPublicState createState() => _UploadBlogPublicState();
}

class _UploadBlogPublicState extends State<UploadBlogPublic> {
  bool visible = false;

  final imagePicker = ImagePicker();
  File blogPic;
  final descController = TextEditingController();
  final format = DateFormat("dd-MM-yyyy");
  var date = DateTime.now();
  String myValue, url;
  FirebaseDatabase dbRef;

  Future pickImage() async {
    final pickedImage = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      blogPic = File(pickedImage.path);
    });
  }

  void uploadBlogImage() async {
    if (descController.text != null) {
      final firebase_storage.Reference blogPicRef = firebase_storage
          .FirebaseStorage.instance
          .ref()
          .child("public blog images");

      var timeKey = new DateTime.now();

      firebase_storage.UploadTask uploadTask =
          blogPicRef.child(timeKey.toString() + ".jpg").putFile(blogPic);

      var imageUrl = await (await uploadTask).ref.getDownloadURL();
      url = imageUrl.toString();
      saveToDatabase(url);
    } else {
      Fluttertoast.showToast(
          msg: "Please Upload Photo and Description",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  void saveToDatabase(url) {
    var dbTimeKey = DateTime.now();
    var formatDate = new DateFormat('MMM d,yyyy');
    var formatTime = new DateFormat('EEE,hh:mm  aaa');

    String date = formatDate.format(dbTimeKey);
    String time = formatTime.format(dbTimeKey);

    var dbRef = FirebaseDatabase.instance.reference();

    var data = {
      "image": url,
      "description": descController.text.trim(),
      "date": date,
      "time": time,
      "author": FirebaseAuth.instance.currentUser.displayName
    };

    dbRef.child('PublicBlogs').push().set(data).then((_) {
      setState(() {
        visible = false;
      });
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Posted!"),
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
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
      body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            blogPic == null
                ? Container(
                    alignment: Alignment.center,
                    height: size.height * 0.3,
                    width: size.width - 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey[200],
                        border: Border.all(width: 0.50)),
                    child: IconButton(
                      hoverColor: Colors.green[100],
                      icon: Icon(Icons.add_a_photo_rounded),
                      onPressed: () {
                        pickImage();
                      },
                    ))
                : GestureDetector(
                    onTap: () {
                      pickImage();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0),
                      height: size.height * 0.3,
                      width: size.width - 25,
                      child: Image.file(
                        blogPic,
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
            SizedBox(height: size.height * 0.03),
            //textforms
            TextFormField(
              validator: (value) {
                return value.isEmpty ? "Please Type Description" : null;
              },
              onSaved: (value) {
                return myValue = value;
              },
              controller: descController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Add A Description',
                contentPadding: EdgeInsets.all(15.0),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.blue[600],
              onPressed: () {
                setState(() {
                  visible = true;
                });
                uploadBlogImage();
              },
              child: Text(
                'POST',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Visibility(
                visible: visible,
                child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: CircularProgressIndicator())),
          ],
        ),
      ))),
    );
  }
}
