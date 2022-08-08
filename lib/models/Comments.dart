class Comments {
  Comments({
      this.postId=0,
      this.id=0,
      this.name='',
      this.email='',
      this.body=''});

  Comments.fromJson(dynamic json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }
  int postId=0;
  int id=0;
  String name='';
  String email='';
  String body='';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postId'] = postId;
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['body'] = body;
    return map;
  }

}