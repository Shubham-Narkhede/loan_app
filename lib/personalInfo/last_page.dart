import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/personalInfo/full_name.dart';
import 'package:page_transition/page_transition.dart';

import '../bottom_nav.dart';
import '../home_page.dart';

class LastPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _lastPage();
  }
}

class _lastPage extends State<LastPage> {
  Widget myWidget() {
    return Container(
        child: Center(
      child: Column(children: <Widget>[
        Text(
          "Your loan application",
          style: TextStyle(fontSize: 16),
        ),
        Container(
          height: 5,
        ),
        Text(
          "is accepted and waiting",
          style: TextStyle(fontSize: 16),
        ),
        Container(
          height: 5,
        ),
        Text(
          "For approval",
          style: TextStyle(fontSize: 16),
        )
      ]),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(bottom: 90),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/gradient.png",
                      fit: BoxFit.fill,
                    ),
                  ), Positioned(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Image.asset("assets/thumb.png"),
                        )),
                    // left: 140,
                    top: 120,
                  ),
                  Positioned(
                    // left: 90,
                      top: 220,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                              "Congratulations!",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            )),
                      )),
                  Positioned ( top: 260,  child: Container(child: Center(child: myWidget(),),width: MediaQuery.of(context).size.width,)),
                  Positioned(
                    child: Container(child: Center(child: Image.asset(
                      "assets/step2.png",
                      height: 100,
                    ),),width: MediaQuery.of(context).size.width,),
                    bottom: 120,
//                    left: 100,
                  ),
                  Positioned(
                      bottom: 30,
//                      left: 80,
//                      right: 80,
                      child: Container(
                        width: MediaQuery.of(context).size.width,

                      child:Center(child:  Container(decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(
                              05),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff29DBB7),
                                Color(0xff66BBAA)
                              ])),child:  MaterialButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: BottomNavClass()));
                        },
//                        color: Color(0xff29DBB7),
                        child: Text("Go to Dashboard"),
                      ),)
                     ),)

                  ),
                ],
              ),
            ),
          )),
    );
  }
}
