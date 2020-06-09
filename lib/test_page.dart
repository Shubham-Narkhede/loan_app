// import 'package:flutter/material.dart';

// class TestMyClass extends StatefulWidget {
//   @override
//   _State createState() => new _State();
// }
// ​
//  class _State extends State<TestMyClass>{
// ​
// double _value = 0.0;
// void _setvalue(double value) => setState(() => _value = value);
// ​
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Name here'),
//       ),
//        body: new Container(
//         padding: new EdgeInsets.all(32.0),
//         child: new Center(
//           child: new Column(
//             children: <Widget>[
//               new Text('Value: ${(_value * 100).round()}'),
//               new Slider(value: _value, onChanged: _setvalue)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class mySliderValue extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _mySliderValue();
  }
}

class _mySliderValue extends State<mySliderValue> {
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Value: ${(_value * 5120800).round()}'),
              new Slider(value: _value, onChanged: _setvalue,min: 2,max: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
