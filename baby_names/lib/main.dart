import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:data_plugin/bmob/bmob.dart';
import 'package:data_plugin/bmob/bmob_query.dart';
import 'package:data_plugin/bmob/response/bmob_error.dart';
import 'package:data_plugin/bmob/response/bmob_updated.dart';
import 'bean/baby.dart';
import 'bean/bmobconfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Names',
      home: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/bmob_config.json', cache: false),
          initialData: "123",
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              var bmobData = json.decode(snapshot.data.toString());
              final bmobConfig = BmobConfig.fromJson(bmobData);
              Bmob.initMasterKey(
                bmobConfig.applicationId,
                bmobConfig.restApiKey,
                bmobConfig.masterKey,
              );

              return MyHomePage();
            } else {
              return Center();
            }
          }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final _babys = List<Baby>();
  bool _showLoading = false;

  @override
  void initState() {
    super.initState();

    _loadData();
  }

  void _loadData() {
    setState(() {
      _showLoading = true;
    });
    BmobQuery<Baby> query = BmobQuery();
    query.setLimit(10);
    query.queryObjects().then((List<dynamic> data) {
      print("success: $data");
      List<Baby> babys = data.map((i) => Baby.fromJson(i)).toList();
      setState(() {
        _babys.clear();
        _babys.addAll(babys);
        _showLoading = false;
      });
    }).catchError((e) {
      print("error: ${BmobError.convert(e).error}");
      setState(() {
        _showLoading = false;
      });
    });
  }

  ///修改一条数据
  void _voteBaby(Baby baby) {
    if (baby != null && baby.objectId != null) {
      Baby newBaby = Baby(
        name: baby.name,
        votes: baby.votes + 1,
      );
      newBaby.objectId = baby.objectId;
      newBaby.update().then((BmobUpdated bmobUpdated) {
        print("update success: ${bmobUpdated.updatedAt}");
        print("update success: ${bmobUpdated.toJson()}");
        _loadData();
      }).catchError((e) {
        print("update error: ${BmobError.convert(e).error}");
      });
    } else {
      print("update error: baby is null or baby.objectId is null");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baby Name Votes'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (_showLoading) {
      return _buildLoading(context);
    } else {
      return _buildList(context, _babys);
    }
  }

  Widget _buildLoading(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildList(BuildContext context, List<Baby> babys) {
    return ListView(
      padding: EdgeInsets.only(top: 20.0),
      children: babys.map((baby) => _buildListItem(context, baby)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, Baby baby) {
    return Padding(
      key: ValueKey(baby.name),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(baby.name),
          trailing: Text(baby.votes.toString()),
          onTap: () => _voteBaby(baby),
        ),
      ),
    );
  }
}
