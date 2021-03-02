import 'package:flutter/material.dart';
import 'package:insight/commonuser/casedetail.dart';
import 'package:insight/dataModels/casestudymodel.dart';

class CaseStudyDetails extends StatefulWidget {
  @override
  _CaseStudyDetailsState createState() => _CaseStudyDetailsState();
}

class _CaseStudyDetailsState extends State<CaseStudyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            'assets/logo.png',
            height: MediaQuery.of(context).size.height * 0.06,
          ),
        ),
      ),
     
      body: Container(
        height: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: casestudy.length,
          itemBuilder: (builder, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, a, b) =>
                            CaseDetails(dataCaseStudy: casestudy[index])));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.040,
                  ),
                  Container(
                    //color: Colors.blue[600],
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width - 50,
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              casestudy[index].caseimg,
                              height: MediaQuery.of(context).size.height * 0.2,
                            ),
                            Text(
                              casestudy[index].name,
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color(0xff47455f),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            /*Text(
                              casestudy[index].aboutcompanyDesc,
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff47455f),
                                fontWeight: FontWeight.w200,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              textAlign: TextAlign.left,
                            ),*/
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.040,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
