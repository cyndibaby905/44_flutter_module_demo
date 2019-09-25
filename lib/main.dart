import 'package:flutter/material.dart';

import 'package:flutter_plugin_network/flutter_plugin_network.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: RaisedButton(
              child: Text("doRequest"),
              onPressed: ()=>FlutterPluginNetwork.doRequest("https://jsonplaceholder.typicode.com/posts", {'userId':'2'}).then((s)=>print('Result:$s')),
            )
        ),
      ),
    );
  }
}
