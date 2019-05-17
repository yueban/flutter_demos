import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListViewPage();
  }
}

class _ListViewPage extends State<ListViewPage> {
  List<Widget> widgets = <Widget>[];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 20; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: widgets,
    // );

    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (context, position) {
        return getRow(position);
      },
    );
  }

  Widget getRow(int i) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text('Row: $i'),
      ),
      onTap: () {
        setState(() {
          // // List.from() create a new list
          // widgets = List.from(widgets);
          // widgets.add(getRow(widgets.length));

          widgets.add(getRow(widgets.length));

          print('tap on Row $i');
        });
      },
    );
  }
}
