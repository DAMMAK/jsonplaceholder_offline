class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({this.title, this.id, this.albumId, this.thumbnailUrl, this.url});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        id: json['id'],
        title: json['title'],
        albumId: json['albumId'],
        thumbnailUrl: json['thumbnailUrl']);
  }
}
