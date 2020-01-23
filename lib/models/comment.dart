class Comment {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Comment({this.id, this.email, this.name, this.body, this.postId});

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        body: json['body']);
  }
}
