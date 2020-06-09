import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/form/formCarYear.dart';
import 'package:page_transition/page_transition.dart';

class FormCarModel extends StatefulWidget {
  final String carBrand;

  const FormCarModel({Key key, this.carBrand}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _formCarModel();
  }
}

class _formCarModel extends State<FormCarModel> {
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
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              yourContainer(35.0, 80.0, widget.carBrand),
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

  var _controller = TextEditingController();
  var currentSelectedValue;
  var deviceTypes = [
    "A3",
    "City",
  ];



  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;

  validateData() {
    if (_key.currentState.validate()) {

      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: FormCarYear(
                carModel:
                carModel,
                carBrand:
                widget.carBrand,
              )));

      _key.currentState.save();
    } else {
       setState(() {

        _validate = true;
      });
    }
  }

  String carModel;
  carModelField() {
    return FormField<String>(
      validator: (value) {
        if (value == null) {
          return "Select your Car Model";
        }
      },
      onSaved: (value) {
        carModel = value;
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
                  value: carModel,
                  onChanged: (String newValue) {
                    state.didChange(newValue);
                    setState(() {
                      carModel = newValue;
                    });
                  },
                  items: <String>[
                    'A3',
                    'A4',
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

  carModelHondaField() {
    return FormField<String>(
      validator: (value) {
        if (value == null) {
          return "Select your Car Model";
        }
      },
      onSaved: (value) {
        carModel = value;
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
                  value: carModel,
                  onChanged: (String newValue) {
                    state.didChange(newValue);
                    setState(() {
                      carModel = newValue;
                    });
                  },
                  items: <String>[
                    'Civic',
                    'City',
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
            child: Form(key: _key,autovalidate: _validate,child:   Container(
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
                      // left: 50,
                      // right: 50,
                    ),
                    Positioned(
                      // left: 40,
                        bottom: 100,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width / 1.2,
                                    child: Text(
                                      "Car Model",
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
                                              child: widget.carBrand == "Audi" ?
                                              carModelField() :
                                              carModelHondaField()

                                          ),
                                          IconButton(
                                            onPressed: () {

                                              validateData();
                                            },
                                            icon: Icon(Icons.forward),
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                        ))
                  ],
                )))


        ));
  }
}
