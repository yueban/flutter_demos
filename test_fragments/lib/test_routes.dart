import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: new Center(
//         child: RaisedButton(
//           onPressed: () {
//             Route route = MaterialPageRoute(builder: (context) => SecondHome());
//             Navigator.push(context, route);
//           },
//           child: Text('Second Home'),
//         ),
//       ),
//     );
//   }
// }

// class SecondHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Hoem'),
//       ),
//       body: new Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go Back'),
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Second Home'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Home'),
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
