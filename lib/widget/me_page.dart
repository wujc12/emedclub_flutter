import 'package:flutter/material.dart';


/// MePage
class MePage extends StatefulWidget {

  @override
  State createState() {
    return new _MePageState();
  }
}

class _MePageState extends State<MePage> {
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