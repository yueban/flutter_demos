import 'package:flutter/material.dart';
import 'package:test_fragments/test_routes.dart';

import 'test_draw.dart';
import 'test_async.dart';
import 'lifecycler.dart';

void main() => runApp(
      MyApp(),
      // SampleAsyncApp(),
      // LifecycleWatcher(),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: DrawDemoApp(),
      // home: CustomButton('123'),
      // home: HomePage(),

      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => HomePage(),
      //   '/second': (context) => SecondHome(),
      // },

      // home: Center(
      //   child: Image.asset('images/avatar.png'),
      // ),

      home: buildLayout(context),
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

Widget buildLayout(BuildContext context) {
  Row row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Row One'),
      Text('Row Two'),
      Text('Row Three'),
      Text('Row Four'),
    ],
  );

  Column column = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Column One'),
      Text('Column Two'),
      Text('Column Three'),
      Text('Column Four'),
    ],
  );

  ListView listView = ListView(
    children: <Widget>[
      Text('Row One'),
      Text('Row Two'),
      Text('Row Three'),
      Text('Row Four'),
    ],
  );

  return listView;
}
