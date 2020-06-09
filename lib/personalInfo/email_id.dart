import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/form/formCarModel.dart';
import 'package:loan_app/personalInfo/work_place.dart';
import 'package:loan_app/validation/validation.dart';
import 'package:page_transition/page_transition.dart';

class EmailIdClass extends StatefulWidget {
  final String userName;
  final String userStatus;

  const EmailIdClass(
      {Key key,
        this.userName,
        this.userStatus
      })
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _emailId();
  }
}

class _emailId extends State<EmailIdClass> {
  Widget yourContainer(var height, var width, var text) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width / 2.3,
        child: Center(child: Text(text),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffEAF8F9),
        ));
  }

  Widget displayData() {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Center(child: Column(
          children: <Widget>[
            yourContainer(40.0, 135.0, widget.userName),
            Container(
              height: 5,
            ),
            yourContainer(40.0, 135.0, widget.userStatus),
            Container(
              height: 5,
            ),
            yourContainer(40.0, 135.0, ""),
          ],
        ),)
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
              type: PageTransitionType.fade,
              child: WorkPlace(userStatus: widget.userStatus,userName: widget.userName,userEmail: _controller.text,)));

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
            child: Form(key: _key,autovalidate: _validate,child: SingleChildScrollView(child:   Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/topCurveBlue.png",fit: BoxFit.fill,),
                    ),
                    Positioned(
                      top: 210,
                      right: 30,
                      child: Image.asset("assets/manClimb2.png"),
                    ),
                    Positioned(
                        top: 300,
//                      left: 70,
                        child: Container(
                          child: Center(
                            child: Image.asset("assets/teoLoan.png"),
                          ),
                          width: MediaQuery.of(context).size.width,
                        )),
                    Positioned(
                        top: 400,
//                      left: 130,
                        child: Container(
                          child: Center(
                            child: Text(
                              "Personal Detail",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                        )),
                    Positioned(
                      child: displayData(),
                      top: 50,
//                      left: 50,
                    ),
                    Positioned(
//                        left: 40,
                        top: 500,
                        bottom: 50,
                        child: Container(width: MediaQuery.of(context).size.width,
                          child:   Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(width:  MediaQuery.of(context)
                                  .size
                                  .width /
                                  1.3,child: Text(
                                "Email Id",
                                style: TextStyle(fontSize: 18),
                              ),),
                              Container(
                                height: 5,
                              ),
                              Container(
//                                height: 50,
                                  width: MediaQuery.of(context)
                                      .size
                                      .width /
                                      1.3,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context)
                                            .size
                                            .width /
                                            2,
                                        child: TextFormField(
                                          controller: _controller,
                                          validator: ValidationData.emailValidate,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Color(0xFFF5f5f5),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 2.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context)
                                            .size
                                            .height /
                                            14,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(
                                                05),
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color(0xff29DBB7),
                                                  Color(0xff66BBAA)
                                                ])),
                                        child: MaterialButton(
                                          onPressed: () {
                                            validateData();
                                          },
                                          child: Text(
                                            "Continue",
                                            style: TextStyle(),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),)

                    )
                  ],
                )) ,)

            )


        ));
  }
}
