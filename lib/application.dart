import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/bottom_nav.dart';

import 'applicationStepper.dart';

class ApplicationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _applicationPage();
  }
}

class _applicationPage extends State<ApplicationPage> {


  Widget tileOfExpansion(
      var userName, var btnName, var childName1, var childName2) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Card(
        child: Padding(
          padding:
              EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0, bottom: 5.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ApplicationStepper()));
            },
            trailing: Container(
              width: 160,
              height: 40,
              color: Color(0xff53CFB6),
              child: Center(
                child: AutoSizeText(btnName),
              ),
            ),
            title: AutoSizeText(
              userName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff02314B),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          // alignment: Alignment.bottomCenter,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 35,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavClass()));
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: AutoSizeText(
                    "Applications",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              height: 48,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 30),
                      child: AutoSizeText(
                        "APPLICATIONS IN PROGRESS",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: AutoSizeText(
                              "TODAY",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          tileOfExpansion("John", "Document Pending",
                              "M:5486413", "Vehical Loan"),
                          tileOfExpansion("Bin", "Check Eligibility", " ", " "),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: AutoSizeText(
                              "YESTERDAY",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          tileOfExpansion("Jimmy", "Repayment", "", ""),
                          tileOfExpansion("Harry", "Disbrustment", " ", " "),
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
