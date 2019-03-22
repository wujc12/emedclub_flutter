import 'package:flutter/material.dart';


/// News Page
class NewsPage extends StatefulWidget {

  @override
  State createState() {
    return new _NewsPageState();
  }
}

class _NewsPageState extends State<NewsPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('Emedclub')),
        body: Container(child: Text('News Page'), alignment: Alignment.center)
    );
  }
}

