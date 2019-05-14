import 'package:flutter/material.dart';
import 'package:test_fragments/test_routes.dart';

import 'test_draw.dart';
import 'test_async.dart';

void main() => runApp(
      // MyApp(),
      SampleAsyncApp(),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: DrawDemoApp(),
      // home: CustomButton('123'),
      // home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        '/second': (context) => SecondHome(),
      },
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: () {}, child: Text(label));
  }
}
