import 'package:flutter/material.dart';
import 'package:test_fragments/test_routes.dart';

import 'test_draw.dart';
import 'test_async.dart';
import 'lifecycler.dart';
import 'rotation_on_double_tap.dart';
import 'test_listview.dart';
import 'test_text_input.dart';

void main() => runApp(
      MyApp(),
      // SampleAsyncApp(),
      // LifecycleWatcher(),
      // RotationOnDoubelTapApp(),
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

      // home: ListViewPage(),

      home: TextInputWidget(),

      // home: buildLayout(context),
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

  GestureDetector gestureDetector = GestureDetector(
    child: FlutterLogo(
      size: 200,
    ),
    // tap
    onTap: () => print('onTap'),
    onTapDown: (TapDownDetails tapDownDetails) =>
        print('onTapDown: $tapDownDetails'),
    onTapUp: (TapUpDetails tapUpDetails) => print('onTapUp: $tapUpDetails'),
    onTapCancel: () => print('onTapCancel'),
    // double tap
    onDoubleTap: () => print('onDoubleTap'),
    // force press
    onForcePressStart: (ForcePressDetails forcePressDetails) =>
        print('onForcePressStart: $forcePressDetails'),
    onForcePressEnd: (ForcePressDetails forcePressDetails) =>
        print('onForcePressEnd: $forcePressDetails'),
    onForcePressPeak: (ForcePressDetails forcePressDetails) =>
        print('onForcePressPeak: $forcePressDetails'),
    onForcePressUpdate: (ForcePressDetails forcePressDetails) =>
        print('onForcePressUpdate: $forcePressDetails'),
    //long press
    onLongPress: () => print('onLongPress'),
    onLongPressStart: (LongPressStartDetails longPressStartDetails) =>
        print('onLongPressStart: $longPressStartDetails'),
    onLongPressEnd: (LongPressEndDetails longPressEndDetails) =>
        print('onLongPressEnd: $longPressEndDetails'),
    onLongPressMoveUpdate:
        (LongPressMoveUpdateDetails longPressMoveUpdateDetails) =>
            print('onLongPressMoveUpdate: $longPressMoveUpdateDetails'),
    onLongPressUp: () => print('onLongPressUp'),
    // vertical
    onVerticalDragStart: (DragStartDetails dragStartDetails) =>
        'onVerticalDragStart: $dragStartDetails',
    onVerticalDragEnd: (DragEndDetails dragEndDetails) =>
        'onVerticalDragEnd: $dragEndDetails',
    onVerticalDragUpdate: (DragUpdateDetails dragUpdateDetails) =>
        'onVerticalDragUpdate: $dragUpdateDetails',
    onVerticalDragDown: (DragDownDetails dragDownDetails) =>
        'onVerticalDragDown: $dragDownDetails',
    onVerticalDragCancel: () => 'onVerticalDragCancel',
    // horizontal
    onHorizontalDragStart: (DragStartDetails dragStartDetails) =>
        'onHorizontalDragStart: $dragStartDetails',
    onHorizontalDragEnd: (DragEndDetails dragEndDetails) =>
        'onHorizontalDragEnd: $dragEndDetails',
    onHorizontalDragUpdate: (DragUpdateDetails dragUpdateDetails) =>
        'onHorizontalDragUpdate: $dragUpdateDetails',
    onHorizontalDragDown: (DragDownDetails dragDownDetails) =>
        'onHorizontalDragDown: $dragDownDetails',
    onHorizontalDragCancel: () => 'onHorizontalDragCancel',
  );

  Text fontText = Text(
    'font text, 有字体的文字',
    style: TextStyle(fontFamily: 'FZYanSongJian'),
  );

  return Center(
    child: fontText,
  );
}
