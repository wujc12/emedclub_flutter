import 'package:flutter/material.dart';

import 'package:emedclub/widget/news_page.dart' show NewsPage;


/// HomePage
class HomePage extends StatefulWidget {

  @override
  State createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final String imgSrc = 'https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike116%2C5%2C5%2C116%2C38/sign=029852576d59252db71a155655f2685e/902397dda144ad3482e337cadda20cf431ad851b.jpg';
  final String intro = '这里是属于斗气的世界，没有花俏艳丽的魔法，有的，仅仅是繁衍到巅峰的斗气！\n心潮澎湃，无限幻想，迎风挥击千层浪，少年不败热血！\n 新书等级制度：斗之气，斗者，斗师，大斗师，斗灵，斗王，斗皇，斗宗，斗尊，斗圣，斗帝。';
  TextStyle style = TextStyle(fontSize: 18);

  void _newsRoute() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new NewsPage();
    }));
  }

  Widget _buildListView() {
    return new ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: 29,
        itemBuilder: (context, int index) {
          return new Row(
            children: <Widget>[
              Container(child: Image.network(imgSrc), padding: const EdgeInsets.fromLTRB(0, 2, 2, 2), height: 100, width: 80),
              Expanded(
                child: Column(
                    children: <Widget>[
                      Container(child: Text('豆粕苍穹', style: TextStyle(fontSize: 18)), alignment: Alignment.centerLeft),
                      Container(child: Text(intro, style: TextStyle(fontSize: 13), overflow: TextOverflow.ellipsis, maxLines: 3)),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text('keyword 1', style: TextStyle(fontSize: 12)),
                            Text('keyword 2', style: TextStyle(fontSize: 12))
                          ],
                        mainAxisAlignment: MainAxisAlignment.start),
                      padding: const EdgeInsets.fromLTRB(2, 2, 2, 2))
                    ]),
              )],
            mainAxisAlignment: MainAxisAlignment.spaceBetween
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Emedclub')),
        body: _buildListView()
    );
  }
}