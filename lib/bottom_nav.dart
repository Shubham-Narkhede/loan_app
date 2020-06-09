import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loan_app/home_page.dart';

class BottomNavClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _bottomNavClass();
  }
}

class _bottomNavClass extends State<BottomNavClass> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [HomePage(), HomePage(), HomePage()];

// #E0E4E5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        backgroundColor: Color(0xffE0E4E5),
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Image.asset("assets/homeicon.png"),
            title: Text('Dashboard'),
          ),
          new BottomNavigationBarItem(
            icon: Image.asset("assets/cart.png"),
            title: Text('Offers'),
          ),
          new BottomNavigationBarItem(
              icon: Image.asset("assets/emi.png"), title: Text('Pay EMI'))
        ],
      ),
    );
  }
}
