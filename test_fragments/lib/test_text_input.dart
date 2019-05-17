import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextInputWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextInputWidget();
  }
}

class _TextInputWidget extends State<TextInputWidget> {
  String _errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          onSubmitted: (text) {
            setState(() {
              if (!isEmail(text)) {
                _errorText = 'Error: not a valid email address!';
              } else {
                _errorText = null;
              }
            });
          },
          decoration: InputDecoration(
            hintText: 'input your email adderss',
            errorText: _errorText,
          ),
        ),
      ),
    );
  }

  bool isEmail(String email) {
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(emailRegexp);

    return regExp.hasMatch(email);
  }
}
