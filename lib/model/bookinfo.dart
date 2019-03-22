class BookInfo {
  String title;
  String author;
  String shortIntro;
  String majorCate;
  String minorCate;
  String coverUrl;

  BookInfo(Map data) {
    this.fromJson(data);
  }

  void fromJson(Map data) {
    this.title = data['title'];
    this.author = data['author'];
    this.shortIntro = data['shortIntro'];
    this.majorCate = data['majorCate'];
    this.minorCate = data['minorCate'];
    this.coverUrl = data['cover'];
  }
}