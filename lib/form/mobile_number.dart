import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:loan_app/form/attach_dpcuments.dart';
import 'package:loan_app/validation/validation.dart';
import 'package:page_transition/page_transition.dart';

class FormMobileNumber extends StatefulWidget {
  final String carBrand;
  final String carModel;
  final String carYear;
  final String carKTp;
  final String dateob;
  final String monthlyIncome;

  const FormMobileNumber(
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

class _formCarYear extends State<FormMobileNumber> {
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
              yourContainer(35.0, 125.0, widget.monthlyIncome),
            ],
          )
        ],
      ),
    );
  }

  var _controller = TextEditingController();

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;

  validateData() {
    if (_key.currentState.validate()) {

      Navigator.pushReplacement(
          context,
          PageTransition(
              type:
              PageTransitionType.fade,
              child: FormAttachDocuments(
                carBrand: widget.carBrand,
                carModel: widget.carModel,
                carKTp: widget.carKTp,
                carYear: widget.carYear,
                monthlyIncome:
                widget.monthlyIncome,
                dateob: widget.dateob,
              )));

      _key.currentState.save();
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Scaffold(
        body: SafeArea(
            child: Form(key: _key,autovalidate: _validate,child: SingleChildScrollView(child:  Container(
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
                        bottom: 120,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width:MediaQuery.of(context).size.width /
                                        1.2,
                                    child: Text(
                                      "Mobile Number",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    height: 5,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        10,
                                    width: MediaQuery.of(context).size.width /
                                        1.2,
                                    // color: Colors.black12,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: _controller,
                                      validator: ValidationData.mobileValidate,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF5f5f5),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 2.0),
                                        ),
                                        suffixIcon: Container(
                                          height: MediaQuery.of(context).size.height /
                                              13,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(05),
                                              gradient: LinearGradient(colors: [Color(0xff29DBB7),Color(0xff66BBAA)])),
                                          child: MaterialButton(
                                            onPressed: () {
                                              validateData();
                                            },
//                                            color: Color(0xff29DBB7),
                                            child: Text("Continue",style: TextStyle(),),
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ))
                  ],
                )),)

            )

        ));
  }
}
