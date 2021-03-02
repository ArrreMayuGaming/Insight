import 'package:flutter/material.dart';
import 'package:insight/commonuser/maindrawer.dart';

class MngtTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png',
          height: size.height * 0.07,
        ),
      ),
      
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              //Neel Shah
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.0,
                          offset: Offset(0.0, 5.0),
                          color: Colors.grey),
                    ]),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          'assets/neel.jpg',
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Text(
                          'Neel Shah ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Chairman',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "With 25 years of rich professional expertise in Information Technology, Mr. Neel Shah has been one of the brains behind establishing this organization, and is currently responsible for the PAN India business of Insight. Truth be told, he has been tremendously instrumental in tying up business relationships with IBM, Lenovo and Fujiutsu.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "A firm believer in knowledge management, Mr. Neel has been practicing continuous lifetime practical learning. Having a penchant for story-telling and poetry, Mr. Neel also loves to pen down his thoughts and visions for the company. As the years pass, he continues to be a source of motivation for the entire Insight family.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              //piyush
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.0,
                          offset: Offset(0.0, 5.0),
                          color: Colors.grey),
                    ]),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          'assets/peeyush.jpg',
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Text(
                          'Piyush Vibhakar ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Managing Director',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Mr. Piyush Vibhakar has profoundly enriched himself by having 25 years of experience in the IT sector. While overseeing the whole sales department, he has also remarkably contributed in tying up business relations with HP, Microsoft and EMC. As the Managing Director, he is responsible for the overall business strategy and direction of the organization. His core strengths lie in strategic analysis, project management and transaction structuring. As an expert negotiator, he has led many marquee transactions to closure across industries.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "On the lighter side, Mr. Piyush  is a passionate sportsman by heart. He precisely loves playing cricket, and his other hobbies include jogging and going on a novel and thrilling adventure.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              //Gunjan shah
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.0,
                          offset: Offset(0.0, 5.0),
                          color: Colors.grey),
                    ]),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          'assets/gunjan.jpg',
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Text(
                          'Gunjan Shah ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Technical Director',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Starting with the company in the year 1997, Mr. Gunjan Shah's deep understanding in the IT Infrastructure and its services has helped him play a key role in the growth and development of Insight and also drive its expansion into new territories of the volatile IT market. In his current position, Mr. Gunjan is responsible for the overall growth and profitability of the business in addition to also maintaining the company’s legacy of exceeding the client’s expectations and delivering cost-effective IT solutions.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Besides being an avid cyclist, he loves to go for a swim, which according to him, is the perfect exercise and hobby for an individual from the IT sector.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
