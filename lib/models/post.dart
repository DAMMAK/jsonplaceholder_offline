class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.title, this.body, this.id, this.userId});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        title: json['title'],
        id: json['id'],
        body: json['body'],
        userId: json['userId']);
  }
}
