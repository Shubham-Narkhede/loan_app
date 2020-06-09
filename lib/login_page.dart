import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loan_app/bottom_nav.dart';
import 'package:loan_app/validation/validation.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _loginPage();
  }
}

class _loginPage extends State<LoginPage> {
  TextEditingController userName = new TextEditingController();
  TextEditingController password = new TextEditingController();
  int _groupValue = -1;
  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }

  int _radioValue1 = 0;
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  Widget myContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "assets/standup.png",
              height: 160,
            ),
            left: 70,
            // right: 100,
          ),
          Positioned(
            child: Image.asset(
              "assets/top.png",
            ),
          ),
        ],
      ),
    );
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;

  validateData() {
    if (_key.currentState.validate()) {
      scaffoldKey.currentState.showSnackBar(new SnackBar(
        backgroundColor: Colors.transparent,
        duration: new Duration(seconds: 9),
        content: new Row(
          children: <Widget>[
            new CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            new AutoSizeText(
              "Submitting...",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ));

      // addData();
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeftWithFade,
              child: BottomNavClass()));

      _key.currentState.save();
    } else {
      // validation error
      setState(() {
        Fluttertoast.showToast(
            msg: "Validation error",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        scaffoldKey.currentState.hideCurrentSnackBar();
        _validate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xff3AAE94),
        body: SafeArea(
            child: Form(
                key: _key,
                autovalidate: _validate,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      myContainer(),
                      Container(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/yourDreams.png",
                          // color: Colors.white,
                          height: 30,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          "RESPONSIBILITY",
                          style: TextStyle(
                              fontFamily: "RobotoConsode",
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/zen.png",
                            color: Colors.white,
                            height: 30,
                          ),
                          Container(
                            width: 8,
                          ),
                          Image.asset(
                            "assets/credit.png",
                            color: Colors.white,
                            height: 30,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      Container(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: AutoSizeText(
                            "Username",
                            style: TextStyle(
                                fontFamily: "RobotoConsode",
                                color: Colors.white,
                                fontSize: 18,
                                 ),
                          )),
                      Container(
                        height: 5,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            // width: MediaQuery.of(context).size.width * 0.8,
                            child: TextFormField(
                              validator: ValidationData.emailValidate,
                              keyboardType: TextInputType.emailAddress,
                              textCapitalization: TextCapitalization.words,
                              controller: userName,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "Username",
                                fillColor: Color(0xff268D75),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent, width: 2.0),
                                ),
                              ),
                            ),
                          )),
                      Container(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: AutoSizeText(
                            "Password",
                            style: TextStyle(color: Colors.white, fontSize: 18,   fontFamily: "RobotoConsode",),
                          )),
                      Container(
                        height: 5,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            // width: MediaQuery.of(context).size.width * 0.8,
                            child: TextFormField(
                              controller: password,
                              validator: ValidationData.passwordValidate,
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "Password",
                                fillColor: Color(0xff268D75),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent, width: 2.0),
                                ),
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Radio(
                              activeColor: Colors.white,
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                            new AutoSizeText(
                              'English',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              activeColor: Colors.white,
                              value: 1,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                            new AutoSizeText(
                              'Bhasa',
                              style: new TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 00,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: MaterialButton(
                            child: AutoSizeText("Login",
                                style: TextStyle(
                                    color: Color(0xff3AAE94), fontSize: 18)),
                            height: 50,
                            minWidth: 150,
                            color: Colors.white,
                            onPressed: () {
                              validateData();

//                               Navigator.pushReplacement(
//                                   context,
//                                   PageTransition(
//                                       type: PageTransitionType
//                                           .leftToRightWithFade,
//                                       child: BottomNavClass()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(40.0),
                                side: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                    ],
                  )),
                ))));
  }
}
