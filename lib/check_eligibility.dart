import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'form/form1.dart';

class CheckEligibility extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _checkEligibility();
  }
}

class _checkEligibility extends State<CheckEligibility> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 20,
            ),
            Image.asset("assets/climbMan.png"),
            Container(
              height: 50,
            ),
            AutoSizeText(
              "Select Profession",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FormBrand()));
                    },
                    child: Image.asset(
                      "assets/list/list1.jpg",
                      height: 50,
                    ),
                  ),
                  Container(width: 15,),

                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FormBrand()));
                    },
                    child: Image.asset(
                      "assets/list/list2.jpg",
                      height: 50,
                    ),
                  ),
                  Container(width: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FormBrand()));
                    },
                    child: Image.asset(
                      "assets/list/list3.jpg",
                      height: 50,
                    ),
                  ),
                  Container(width: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FormBrand()));
                    },
                    child: Image.asset(
                      "assets/list/list4.jpg",
                      height: 50,
                    ),
                  ),
                  Container(width: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FormBrand()));
                    },
                    child: Image.asset(
                      "assets/list/list5.jpg",
                      height: 50,
                    ),
                  ),
                  Container(width: 15,),
                ],
              ),
            ),
            Container(height: 15,),
          ],
        ),
      )),
    );
  }
}
