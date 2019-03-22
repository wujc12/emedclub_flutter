import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:emedclub/model/bookinfo.dart';


void main() async {
  Dio dio = new Dio();
  Response response = await dio.get('https://api.zhuishushenqi.com/book/by-categories?gender=male&type=hot&major=%E5%A5%87%E5%B9%BB&minor=&start=0&limit=20');
  Map data = jsonDecode(response.toString());
  BookInfo bookInfo = new BookInfo(data['books'][28]);
  print(bookInfo.coverUrl);
}