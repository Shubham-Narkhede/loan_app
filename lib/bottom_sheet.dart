import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/check_eligibility.dart';
import 'package:loan_app/validation/validation.dart';

class MyBottomSheet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myBottomSheet();
  }
}

class _myBottomSheet extends State<MyBottomSheet> {
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);
  var currentSelectedValue;
  var deviceTypes = [
    "5 years",
    "10 years",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: MediaQuery.of(context).size.height * 0.83,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                color: Color(0xffEBEBEB),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
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
                          child: AutoSizeText(
                            "Loan Requirement",
                            style: TextStyle(color: Colors.white, fontSize: 24,fontFamily: "RobotoConsode",),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 0),
                          child: AutoSizeText(
                            "IDR",
                            style: TextStyle(fontFamily: "Roboto",
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: AutoSizeText(
                            "${(_value * 5120800).round()}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 0),
                            child: new Slider(
                                value: _value, onChanged: _setvalue)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: AutoSizeText(
                                "Rp.1m",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: AutoSizeText(
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
                              title: AutoSizeText(
                                "For Period Of",
                                style: TextStyle(color: Colors.white,fontFamily: "RobotoConsode",),
                              ),
                              trailing: new Theme(
                                data: Theme.of(context).copyWith(
                                  canvasColor: Colors.black26,
                                ), child:
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  style: new TextStyle(
                                    color: Colors.white,
                                  ),
                                  hint: Text("Select", style: TextStyle( color: Colors.white)),
                                  value: currentSelectedValue,
                                  isDense: true,
                                  onChanged: (newValue) {
                                    setState(() {
                                      currentSelectedValue = newValue;
                                    });
                                    // print(currentSelectedValue);
                                  },
                                  items: deviceTypes.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: AutoSizeText(
                                        value,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                              )
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
                                title: AutoSizeText(
                                  "At interest rate",
                                  style: TextStyle(color: Colors.white,fontFamily: "RobotoConsode",),
                                ),
                                trailing: MaterialButton(
                                  color: Colors.white54,
                                  minWidth: 120,
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: AutoSizeText(
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
                                title: AutoSizeText(
                                  "Monthly Installment",
                                  style: TextStyle(color: Colors.white,fontFamily: "RobotoConsode",),
                                ),
                                trailing: MaterialButton(
                                  color: Colors.white54,
                                  minWidth: 120,
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: AutoSizeText(
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
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color(0xff29DBB7),
                                Color(0xff66BBAA)
                              ])),
                          child: MaterialButton(
                            height: MediaQuery.of(context).size.height * 0.06,
                            minWidth: 200,
//                            color: Color(0xff29DBB7),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CheckEligibility()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: AutoSizeText(
                              "Check Eligibility",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18,fontFamily: "Roboto",),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        )));
  }
}
