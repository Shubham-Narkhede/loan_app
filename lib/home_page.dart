import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/application.dart';
import 'package:loan_app/check_eligibility.dart';
import 'package:loan_app/leads.dart';
import 'package:loan_app/profile_page.dart';
import 'package:loan_app/test_page.dart';
import 'package:page_transition/page_transition.dart';

import 'bottom_sheet.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _homePage();
  }
}

class _homePage extends State<HomePage> {
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);
  var currentSelectedValue;
  var deviceTypes = [
    "5 years",
    "10 years",
  ];
  void loanRequirementSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
            height: MediaQuery.of(context).size.height * 0.81,
            decoration: new BoxDecoration(
              color: Color(0xffEBEBEB),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 8,
                  width: 100,
                  color: Colors.grey,
                ),
                Container(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: new BoxDecoration(
                    color: Color(0xff02314B),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Loan Requirement",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 0),
                        child: Text(
                          "IDR",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          "${(_value * 5120800).round()}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 0),
                          child:
                              new Slider(value: _value, onChanged: _setvalue)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Rp.1m",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              "Rp.500m",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ListTile(
                            title: Text(
                              "For Period Of",
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                hint: Text("Select"),
                                value: currentSelectedValue,
                                isDense: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    currentSelectedValue = newValue;
                                  });
                                  print(currentSelectedValue);
                                },
                                items: deviceTypes.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ListTile(
                              title: Text(
                                "At interest rate",
                                style: TextStyle(color: Colors.white),
                              ),
                              trailing: MaterialButton(
                                color: Colors.white54,
                                minWidth: 120,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "${(_value * 15).round()}%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ListTile(
                              title: Text(
                                "Monthly Installment",
                                style: TextStyle(color: Colors.white),
                              ),
                              trailing: MaterialButton(
                                color: Colors.white54,
                                minWidth: 120,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "Rp. ${(_value * 51208000).round()}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                      Container(
                        height: 20,
                      ),
                      MaterialButton(
                        minWidth: 200,
                        color: Color(0xff29DBB7),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckEligibility()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("Check Eligibility"),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }

  var _selectedLocation = "A";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xffEBF1F3),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(child:Column(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  children: <Widget>[
                                    AutoSizeText(
                                      "Hello Alex",
                                      style: TextStyle(fontFamily: "Roboto",
                                          color: Colors.white, fontSize: 26),
                                    ),
                                    AutoSizeText(
                                      "February 2020",
                                      style: TextStyle( fontFamily: "RobotoConsode",
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.scale,
                                          child: ProfilePage()));
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ProfilePage()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: new Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new AssetImage(
                                                  "assets/user.png")))),
                                ),
                              ),
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
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.scale,
                                          child: LeadsPage()));
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => LeadsPage()));
                                },
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      AutoSizeText(
                                        "Leads",
                                        style: TextStyle(fontFamily: "RobotoConsode",
                                            color: Colors.black, fontSize: 16),
                                      ),
                                      Container(
                                        height: 5,
                                      ),
                                      AutoSizeText(
                                        "25",
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
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.upToDown,
                                          child: ApplicationPage()));
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             ApplicationPage()));
                                },
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      AutoSizeText(
                                        "Applications",
                                        style: TextStyle(fontFamily: "RobotoConsode",
                                            color: Colors.black, fontSize: 12),
                                      ),
                                      Container(
                                        height: 5,
                                      ),
                                      AutoSizeText(
                                        "15",
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
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    AutoSizeText(
                                      "Loans",
                                      style: TextStyle(fontFamily: "RobotoConsode",
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    AutoSizeText(
                                      "12",
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
                  height: 15,
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        child: Image.asset(
                          "assets/vehical.png",
                          height: 125,
                          width: 125,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.downToUp,
                                  child: MyBottomSheet()));
                          // loanRequirementSheet();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => mySliderValue()));
                        },
                      ),

                      Container(width: 10,),
                      InkWell(
                        child: Image.asset(
                          "assets/commercial.png",
                          height: 125,
                          width: 125,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                ),

                Container(height: 10,),


                Container(
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        child: Container(
//                          height: 150, width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white54,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image.asset(
                                "assets/home.png",
                                height: 125,
                                width: 125,
                              ),
                              Positioned(
                                left: 30,
                                bottom: 10,
                                child: AutoSizeText("Home Loan"),
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                      Container(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
//                          height: 150,width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white54,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image.asset(
                                "assets/education.png",
                                height: 125,
                                width: 125,
                              ),
                              Positioned(
                                left: 20,
                                bottom: 10,
                                child: AutoSizeText("Education Loan"),
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.scale,
                                child: ProfilePage()));
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ProfilePage()));
                      },
                      minWidth: 125,
                      color: Colors.white,
                      child: AutoSizeText(
                        "Todays Follow-Ups",
                        style: TextStyle(fontSize: 12,fontFamily: "RobotoConsode",fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 125,
                      color: Colors.white,
                      child: AutoSizeText("Recovery",style: TextStyle(fontFamily: "RobotoConsode",fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ],
            ),)
          ),
        ));
  }
}
