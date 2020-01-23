class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({this.id, this.title, this.userId, this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed']);
}
