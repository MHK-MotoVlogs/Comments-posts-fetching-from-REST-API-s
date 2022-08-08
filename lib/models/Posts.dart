class Posts {
  Posts({
      this.userId=0,
      this.id=0,
      this.title='',
      this.body='',});

  Posts.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
  int userId=0;
  int id=0;
  String title='';
  String body='';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }

}