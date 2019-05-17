import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PreferenceCounter();
  }
}

class _PreferenceCounter extends State<PreferenceCounter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Counter: $_counter'),
      onPressed: _increamentCoutner,
    );
  }

  _increamentCoutner() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int counter = (pref.getInt('counter') ?? 0) + 1;
    pref.setInt('counter', counter);
    setState(() {
      _counter = counter;
    });
  }
}
