import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/form/formCarModel.dart';
import 'package:loan_app/personalInfo/dealar_detail.dart';
import 'package:page_transition/page_transition.dart';

class AttachDocuments extends StatefulWidget {
  final String userName;
  final String userStatus;
  final String  userEmail;

  const AttachDocuments(
      {Key key,
        this.userName,
        this.userStatus,
        this.userEmail
      })
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _attachDocuments();
  }
}

class _attachDocuments extends State<AttachDocuments> {
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
            yourContainer(40.0, 135.0, widget.userEmail),
          ],
        ),)
    );
  }

  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Scaffold(
        body: SafeArea(
            child: Container(
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

                    // Positioned(
                    //   top: 400,
                    //   left: 130,
                    //   child: Text(
                    //     "Personal Detail",
                    //     style: TextStyle(fontSize: 18),
                    //   ),
                    // ),
                    Positioned(
                      child: displayData(),
                      top: 50,
//                      left: 50,
                    ),
                    Positioned(
                        top: 420,
//                      left: 130,
                        child: Container(
                          child: Center(
                            child: Text(
                              "Attach Documents",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                        )),

                    Positioned(
                      left: 40,
                      top: 460,
                      child: Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                MaterialButton(
                                    height: 80,
                                    minWidth: 80,
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
                                Text('Address Proof'),
                              ],
                            ),
                            Container(
                              width: 10,
                            ),
                            Column(
                              children: <Widget>[
                                MaterialButton(
                                    height: 80,
                                    minWidth: 80,
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
                                Text('Identity Proof'),
                              ],
                            ),
                            Container(
                              width: 10,
                            ),
                            Column(
                              children: <Widget>[
                                MaterialButton(
                                    height: 80,
                                    minWidth: 80,
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
                                Text('Others'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(child: Container(
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
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: DealrDetails(userName: widget.userName,userEmail: widget.userEmail,userStatus: widget.userStatus,)));
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(),
                        ),
                      ),
                    ),bottom: 20,right: 40,)

//                    Positioned(
//                        bottom: 20,
//                        left: 30,
//                        right: 30,
//                        child: Container(
//                          height: 45,
//                          width: 90,
//                          child: MaterialButton(
//                            color: Color(0xff29DBB7),
//                            onPressed: () {
//                              Navigator.pushReplacement(
//                                  context,
//                                  PageTransition(
//                                      type: PageTransitionType.fade,
//                                      child: DealrDetails()));
//                            },
//                            child: Text("Continue"),
//                          ),
//                        ))
                  ],
                ))));
  }
}
