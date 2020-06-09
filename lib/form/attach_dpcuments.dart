// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:loan_app/personalInfo/first_page.dart';
// import 'package:page_transition/page_transition.dart';

// class FormAttachDocuments extends StatefulWidget {
//   // final String priceValue;

//   // const FormMobileNumber({Key key, this.priceValue}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _formCarYear();
//   }
// }

// class _formCarYear extends State<FormAttachDocuments> {
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
//               yourContainer(35.0, 125.0, "widget"),
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

//   void _onLoading() {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return Dialog(
//           child: Container(
//             height: 70,
//             child: new Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 new CircularProgressIndicator(),
//                 Container(
//                   width: 10,
//                 ),
//                 new Text("Checking Eligibility"),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//     new Future.delayed(new Duration(seconds: 3), () {
//       Navigator.pop(context); //pop dialog
//       Navigator.pushReplacement(
//           context,
//           PageTransition(
//               type: PageTransitionType.downToUp, child: FirstPage()));
//     });
//   }

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
//                         "Attach Documents",
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
//                             Container(
//                                 height: 100,
//                                 width: 280,
//                                 // color: Colors.black12,
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: <Widget>[
//                                     Column(
//                                       children: <Widget>[
//                                         MaterialButton(
//                                             height: 50,
//                                             minWidth: 50,
//                                             child: Center(
//                                               child: Icon(Icons.add),
//                                             ),
//                                             onPressed: () {},
//                                             color: Colors.white,
//                                             shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5))),
//                                         Container(
//                                           height: 5,
//                                         ),
//                                         Text('Income \n Statement'),
//                                       ],
//                                     ),
//                                     Column(
//                                       children: <Widget>[
//                                         MaterialButton(
//                                             height: 50,
//                                             minWidth: 50,
//                                             child: Center(
//                                               child: Icon(Icons.add),
//                                             ),
//                                             onPressed: () {},
//                                             color: Colors.white,
//                                             shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5))),
//                                         Container(
//                                           height: 5,
//                                         ),
//                                         Text('Bank \n Statement'),
//                                       ],
//                                     ),
//                                     Column(
//                                       children: <Widget>[
//                                         MaterialButton(
//                                             height: 50,
//                                             minWidth: 50,
//                                             child: Center(
//                                               child: Icon(Icons.add),
//                                             ),
//                                             onPressed: () {},
//                                             color: Colors.white,
//                                             shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5))),
//                                         Container(
//                                           height: 5,
//                                         ),
//                                         Text('Electricity \n Bill'),
//                                       ],
//                                     ),
//                                     Column(
//                                       children: <Widget>[
//                                         MaterialButton(
//                                             height: 50,
//                                             minWidth: 50,
//                                             child: Center(
//                                               child: Icon(Icons.add),
//                                             ),
//                                             onPressed: () {},
//                                             color: Colors.white,
//                                             shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(5))),
//                                         Container(
//                                           height: 5,
//                                         ),
//                                         Text('Mobile \n Bill'),
//                                       ],
//                                     ),
//                                   ],
//                                 )),
//                             Padding(
//                               padding: EdgeInsets.only(left: 60),
//                               child: MaterialButton(
//                                   child: Text("Submit"),
//                                   minWidth: 150,
//                                   onPressed: () {
//                                     _onLoading();
//                                   },
//                                   color: Color(0xff29DBB7)),
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
import 'package:loan_app/form/attach_dpcuments.dart';
import 'package:loan_app/personalInfo/first_page.dart';
import 'package:page_transition/page_transition.dart';

class FormAttachDocuments extends StatefulWidget {
  final String carBrand;
  final String carModel;
  final String carYear;
  final String carKTp;
  final String dateob;
  final String monthlyIncome;

  const FormAttachDocuments(
      {Key key,
      this.carModel,
      this.carBrand,
      this.carYear,
      this.carKTp,
      this.dateob,
      this.monthlyIncome})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _formCarYear();
  }
}

class _formCarYear extends State<FormAttachDocuments> {
  Widget yourContainer(var height, var width, var text) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: width,
        child: Center(child: AutoSizeText(text)),
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
              yourContainer(35.0, 125.0, widget.monthlyIncome),
            ],
          )
        ],
      ),
    );
  }

  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: 70,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                new CircularProgressIndicator(),
                Container(
                  width: 10,
                ),
                new AutoSizeText("Checking Eligibility"),
              ],
            ),
          ),
        );
      },
    );
    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pop(context); //pop dialog
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.downToUp, child: FirstPage()));
    });
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
                            child: AutoSizeText(
                              "Attached Document",
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
                        top: 470,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                                // color: Colors.black12,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        MaterialButton(
                                            height: 50,
                                            minWidth: 50,
                                            child: Center(
                                              child: Icon(Icons.add),
                                            ),
                                            onPressed: () {},
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        Container(
                                          height: 5,
                                        ),
                                        AutoSizeText('Income \n Statement'),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        MaterialButton(
                                            height: 50,
                                            minWidth: 50,
                                            child: Center(
                                              child: Icon(Icons.add),
                                            ),
                                            onPressed: () {},
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        Container(
                                          height: 5,
                                        ),
                                        AutoSizeText('Bank \n Statement'),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        MaterialButton(
                                            height: 50,
                                            minWidth: 50,
                                            child: Center(
                                              child: Icon(Icons.add),
                                            ),
                                            onPressed: () {},
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        Container(
                                          height: 5,
                                        ),
                                        AutoSizeText('Electricity \n Bill'),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        MaterialButton(
                                            height: 50,
                                            minWidth: 50,
                                            child: Center(
                                              child: Icon(Icons.add),
                                            ),
                                            onPressed: () {},
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        Container(
                                          height: 5,
                                        ),
                                        AutoSizeText('Mobile \n Bill'),
                                      ],
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Container(  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(05),
                                  gradient: LinearGradient(colors: [Color(0xff29DBB7),Color(0xff66BBAA)])),child:  MaterialButton(
                                  child: AutoSizeText("Submit"),
                                  minWidth: 150,
                                  onPressed: () {
                                    _onLoading();
                                  },
                                  ),)

                            ),
                          ],
                        ))
                  ],
                ))));
  }
}
