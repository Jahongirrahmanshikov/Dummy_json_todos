class TodoModel {
  List<User> todos;
  int total;
  int skip;
  int limit;

  TodoModel({
    required this.todos,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory TodoModel.fromJson(Map<String, Object?> json) {
    return TodoModel(
      todos: (json['todos'] as List).map((e) => User.fromJson(e)).toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );
  }

  @override
  String toString() {
    return 'TodoModel(todos: $todos, total: $total, skip: $skip, limit: $limit)';
  }
}

class User {
  int id;
  String todo;
  bool completed;
  int userId;

  User({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      id: json['id'] as int,
      todo: json['todo'] as String,
      completed: json['completed'] as bool,
      userId: json['userId'] as int,
    );
  }

  @override
  String toString() {
    return 'User(id: $id, todo: $todo, completed: $completed, userId: $userId)';
  }
}
