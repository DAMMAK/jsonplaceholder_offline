class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.id, this.title, this.userId});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
    );
  }
}
