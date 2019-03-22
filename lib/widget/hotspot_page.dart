import 'package:flutter/material.dart';


/// HotPage
class HotPage extends StatefulWidget {

  @override
  State createState() {
    return new _HotPageState();
  }
}

class _HotPageState extends State<HotPage> {
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