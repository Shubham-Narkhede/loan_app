import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/home_page.dart';

import 'bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _profilePage();
  }
}

class _profilePage extends State<ProfilePage> {
  Widget NotificationWidget(var title, var subtitle, var trailing) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        child: ListTile(
          title: AutoSizeText(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: AutoSizeText(subtitle),
          trailing: AutoSizeText(trailing),
        ),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0, // has the effect of softening the shadow
              spreadRadius: 4.0, // has the effect of extending the shadow
              // offset: Offset(
              //   10.0, // horizontal, move right 10
              //   10.0, // vertical, move down 10
              // ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffEBF1F3),
      body: SafeArea(
          child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff02314B),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        padding: EdgeInsets.only(left: 60),
                        child: AutoSizeText(
                          "To-do list",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
                  Container(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AutoSizeText(
                                  "To-DO",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                Container(
                                  height: 5,
                                ),
                                AutoSizeText(
                                  "06",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new AssetImage(
                                        "assets/rectangle.png"))),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AutoSizeText(
                                  "Overdue",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                Container(
                                  height: 5,
                                ),
                                AutoSizeText(
                                  "05",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new AssetImage(
                                        "assets/rectangle.png"))),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AutoSizeText(
                                  "Due Today",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                Container(
                                  height: 5,
                                ),
                                AutoSizeText(
                                  "02",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new AssetImage(
                                        "assets/rectangle.png"))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: AutoSizeText(
                      "TODAY",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  NotificationWidget(
                      "Upcoming Meeting", "With Mr.John", "TIME:2PM"),
                  NotificationWidget(
                      "Customer Follow up", "Reminder to Mr.Ben", ""),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: AutoSizeText(
                      "YESTERDAY",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  NotificationWidget("Loan Approved", " ", ""),
                  NotificationWidget("Approval Pending", "for Mr.Ben", ""),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
