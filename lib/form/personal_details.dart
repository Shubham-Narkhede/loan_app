// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:page_transition/page_transition.dart';

// import 'mobile_number.dart';

// class FormPersonalDetails extends StatefulWidget {
//   final String dateOfBirth;

//   const FormPersonalDetails({Key key, this.dateOfBirth}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _formCarYear();
//   }
// }

// class _formCarYear extends State<FormPersonalDetails> {
//   Widget yourContainer(var height, var width, var text) {
//     return Container(
//         height: height,
//         width: width,
//         child: Center(child: Text(text)),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Color(0xffEAF8F9),
//         ));
//   }

//   Widget displayData() {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               yourContainer(35.0, 80.0, "Audi"),
//               Container(
//                 width: 10,
//               ),
//               yourContainer(35.0, 80.0, "A3"),
//               Container(
//                 width: 10,
//               ),
//               yourContainer(35.0, 80.0, "2020")
//             ],
//           ),
//           Container(
//             height: 10,
//           ),
//           yourContainer(35.0, 260.0, "5642398651279"),
//           Container(
//             height: 10,
//           ),
//           Row(
//             children: <Widget>[
//               yourContainer(35.0, 125.0, widget.dateOfBirth),
//               Container(
//                 width: 10,
//               ),
//               yourContainer(35.0, 125.0, ""),
//             ],
//           )
//         ],
//       ),
//     );
//   }

// double _value = 0.0;
// void _setvalue(double value) => setState(() => _value = value);

//   // var myValue = (_value * 5120800).round();

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement buil
//     return Scaffold(
//         body: SafeArea(
//             child: Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Stack(
//                   children: <Widget>[
//                     Image.asset("assets/topCurveBlue.png"),
//                     Positioned(
//                       top: 250,
//                       left: 16,
//                       child: Image.asset("assets/stair.png"),
//                     ),
//                     Positioned(
//                       top: 200,
//                       left: 20,
//                       child: Image.asset("assets/stairMan.png"),
//                     ),
//                     Positioned(
//                       top: 300,
//                       left: 100,
//                       child: Image.asset("assets/check.png"),
//                     ),
//                     Positioned(
//                       top: 400,
//                       left: 130,
//                       child: Text(
//                         "Vehical Detail",
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                     Positioned(
//                       child: displayData(),
//                       top: 50,
//                       left: 50,
//                     ),
//                     Positioned(
//                         left: 40,
//                         top: 470,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text(
//                               "Net Monthly Income",
//                               style: TextStyle(fontSize: 16),
//                             ),
//                             Container(
//                               height: 5,
//                             ),
//                             Container(
//                                 height: 50,
//                                 width: 280,
//                                 // color: Colors.black12,
//                                 child: new Slider(
//                                     value: _value, onChanged: _setvalue)),
//                             Container(
//                               width: 280,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: <Widget>[
//                                   Text("Rp.1m"),
//                                   Text("Rp.10m"),
//                                   Text("Rp.50m")
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 5,
//                             ),
//                             Row(
//                               children: <Widget>[
//                                 Container(
//                                   width: 150,
//                                 ),
//                                 MaterialButton(
//                                   onPressed: () {
//                                     Navigator.pushReplacement(
//                                         context,
//                                         PageTransition(
//                                             type: PageTransitionType.fade,
//                                             child: FormMobileNumber(
//                                                 priceValue: _value.toString(),
//                                                 doDate: widget.dateOfBirth)));
//                                   },
//                                   color: Color(0xff29DBB7),
//                                   child: Text("Continue"),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ))
//                   ],
//                 ))));
//   }
// }

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:loan_app/form/formKtpNumber.dart';
import 'package:loan_app/form/fromDob.dart';
import 'package:loan_app/form/mobile_number.dart';
import 'package:loan_app/form/personal_details.dart';
import 'package:page_transition/page_transition.dart';

class FormPersonalDetails extends StatefulWidget {
  final String carBrand;
  final String carModel;
  final String carYear;
  final String carKTp;
  final String dateob;

  const FormPersonalDetails(
      {Key key,
      this.carModel,
      this.carBrand,
      this.carYear,
      this.carKTp,
      this.dateob})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _formCarYear();
  }
}

class _formCarYear extends State<FormPersonalDetails> {
  Widget yourContainer(var height, var width, var text) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: width,
        child: Center(child: Text(text)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffEAF8F9),
        ));
  }

  Widget displayData() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              yourContainer(35.0, 80.0, widget.carBrand),
              Container(
                width: 10,
              ),
              yourContainer(35.0, 80.0, widget.carModel),
              Container(
                width: 10,
              ),
              yourContainer(35.0, 80.0, widget.carYear)
            ],
          ),
          Container(
            height: 10,
          ),
          yourContainer(35.0, 260.0, widget.carKTp),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              yourContainer(35.0, 125.0, widget.dateob),
              Container(
                width: 10,
              ),
              yourContainer(35.0, 125.0, ""),
            ],
          )
        ],
      ),
    );
  }

  var _controller = TextEditingController();
  DateTime selectedDate = DateTime.now();
  var myFormat = DateFormat('d-MM-yyyy');

  Future<Null> _selectDate(BuildContext context) async {
    final YearPicker picked = YearPicker(
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
      onChanged: (DateTime value) {
        selectedDate = value;
      },
      selectedDate: selectedDate,
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        // selectedDate = picked;
        _controller.value =
            TextEditingValue(text: myFormat.format(selectedDate));
      });
  }

  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);
  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/topCurveBlue.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 250,
                      left: 16,
                      child: Image.asset("assets/stair.png"),
                    ),
                    Positioned(
                      top: 200,
                      left: 20,
                      child: Image.asset("assets/stairMan.png"),
                    ),
                    Positioned(
                      top: 300,
                      // left: 100,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(child: Image.asset("assets/check.png")),
                      ),
                    ),
                    Positioned(
                        top: 400,
                        // left: 130,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              "Personal Detail",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )),
                    Positioned(
                      child: displayData(),
                      top: 50,
                      // left: 50,
                    ),
                    Positioned(
                        // left: 40,
                        top: 500,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 280,
                                  child: Text(
                                    "Net Monthly Income",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Container(
                                  height: 5,
                                ),
                                Container(
                                    height: 50,
                                    width: 280,
                                    // color: Colors.black12,
                                    child: new Slider(
                                        value: _value, onChanged: _setvalue)),
                                Container(
                                  width: 280,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("Rp.1m"),
                                      Text("Rp.10m"),
                                      Text("Rp.50m")
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      width: 150,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          gradient: LinearGradient(colors: [
                                            Color(0xff29DBB7),
                                            Color(0xff66BBAA)
                                          ])),
                                      child: MaterialButton(
//                                        height: MediaQuery.of(context).size.height * 0.06,
//                                        minWidth: 200,
//                            color: Color(0xff29DBB7),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              PageTransition(
                                                  type: PageTransitionType.fade,
                                                  child: FormMobileNumber(
                                                    carYear: widget.carYear,
                                                    carKTp: widget.carKTp,
                                                    carModel: widget.carModel,
                                                    carBrand: widget.carBrand,
                                                    dateob: widget.dateob,
                                                    monthlyIncome:
                                                        "${(_value * 50).round()}",
                                                  )));
                                        },
//                                        shape: RoundedRectangleBorder(
//                                            borderRadius: BorderRadius.circular(30)),
                                        child: AutoSizeText(
                                          "Continue",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ))));
  }
}
