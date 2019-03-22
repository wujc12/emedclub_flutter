import 'package:flutter/material.dart';

/// ListPage
class ListPage extends StatefulWidget {

  @override
  State createState() {
    return new _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Emedclub')),
        body: new Container(
          child: Text('Hello World'),
        )
    );
  }
}