import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insight/blogs/publicmodel.dart';

class ShowPublicPost extends StatefulWidget {
  @override
  _ShowPublicPostState createState() => _ShowPublicPostState();
}

class _ShowPublicPostState extends State<ShowPublicPost> {
  List<PublicPost> postList = [];
  DatabaseReference drf;

  @override
  void initState() {
    super.initState();
    drf = FirebaseDatabase.instance.reference().child('PublicBlogs');
    drf.once().then((DataSnapshot snap) {
      postList.clear();
      var keys = snap.value.keys;
      var data = snap.value;

      for (var individualKey in keys) {
        PublicPost publicPost = new PublicPost(
          data[individualKey]['image'],
          data[individualKey]['date'],
          data[individualKey]['time'],
          data[individualKey]['description'],
          data[individualKey]['author'],
        );
        postList.add(publicPost);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: postList.length == 0
              ? Center(child: new Text('No Posts!'))
              : ListView.builder(
                  
                  itemCount: postList.length,
                  itemBuilder: (_, index) {
                    return postUi(
                        postList[index].image,
                        postList[index].description,
                        postList[index].date,
                        postList[index].time,
                        postList[index].author);
                  },
                ),
        ),
      ),
    );
  }
}

Widget postUi(
    String image, String description, String date, String time, String author) {
  return new Card(
    elevation: 10.0,
    margin: EdgeInsets.all(15.0),
    child: new Container(
      padding: EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                date,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                time,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          new Image.network(
            image,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            description,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
