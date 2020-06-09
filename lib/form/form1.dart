import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/form/formCarModel.dart';
import 'package:page_transition/page_transition.dart';

class FormBrand extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _formBrand();
  }
}

class _formBrand extends State<FormBrand> {
  Widget yourContainer(var height, var width, var text) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: width,
        child: AutoSizeText(text),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffEAF8F9),
        ));
  }

  Widget displayData() {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              yourContainer(35.0, 80.0, ""),
              Container(
                width: 10,
              ),
              yourContainer(35.0, 80.0, ""),
              Container(
                width: 10,
              ),
              yourContainer(35.0, 80.0, "")
            ],
          ),
          Container(
            height: 10,
          ),
          yourContainer(35.0, 260.0, ""),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              yourContainer(35.0, 125.0, ""),
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

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;

  validateData() {
    if (_key.currentState.validate()) {
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: FormCarModel(
                carBrand: carBrand,
              )));

      _key.currentState.save();
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }

  String carBrand;
  carBrandField() {
    return FormField<String>(
      validator: (value) {
        if (value == null) {
          return "Select your Car Brand";
        }
      },
      onSaved: (value) {
        carBrand = value;
      },
      builder: (
        FormFieldState<String> state,
      ) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5.0),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: new Text("Select"),
                  value: carBrand,
                  onChanged: (String newValue) {
                    state.didChange(newValue);
                    setState(() {
                      carBrand = newValue;
                    });
                  },
                  items: <String>[
                    'Audi',
                    'Honda',
                  ].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                ),
              ),
//            SizedBox(height: 5.0),
              Text(
                state.hasError ? state.errorText : '',
                style:
                    TextStyle(color: Colors.redAccent.shade700, fontSize: 12.0),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Scaffold(
        body: SafeArea(
            child: Form(
                key: _key,
                autovalidate: _validate,
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
                            child:
                                Center(child: Image.asset("assets/check.png")),
                          ),
                        ),
                        Positioned(
                            top: 400,
                            // left: 130,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  "Vehical Detail",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            )),
                        Positioned(
                          child: Container(
                            child: Center(
                              child: displayData(),
                            ),
                            width: MediaQuery.of(context).size.width,
                          ),
                          top: 50,
                        ),
                        Positioned(
                            bottom: 100,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                  child: Column(
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    child: Text(
                                      "Car Brand",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    height: 5,
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      color: Color(0xFFF5f5f5),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Container(
                                              width: 8,
                                            ),
                                            Container(
//                                            height: MediaQuery.of(context).size.height * 0.09,
                                                width: 220,
                                                child: carBrandField()
//                                            DropdownButtonHideUnderline(
//                                              child: DropdownButton<String>(
//                                                hint: Text("Select"),
//                                                value: currentSelectedValue,
//                                                isDense: true,
//                                                onChanged: (newValue) {
//                                                  setState(() {
//                                                    currentSelectedValue = newValue;
//                                                  });
//                                                },
//                                                items:
//                                                deviceTypes.map((String value) {
//                                                  return DropdownMenuItem<String>(
//                                                    value: value,
//                                                    child: Text(value),
//                                                  );
//                                                }).toList(),
//                                              ),
//                                            ),
                                                ),
                                            IconButton(
                                              onPressed: () {
                                                validateData();
                                              },
                                              icon: Icon(Icons.forward),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              )),
                            ))
                      ],
                    )))));
  }
}
