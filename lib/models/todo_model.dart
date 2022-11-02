import 'dart:convert';

class ToDoModel {
  final String title;
  final String subtitle;
  final bool isDone;
  ToDoModel({
    required this.title,
    required this.subtitle,
    required this.isDone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'isDone': isDone,
    };
  }

  factory ToDoModel.fromMap(Map<String, dynamic> map) {
    return ToDoModel(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      isDone: map['isDone'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToDoModel.fromJson(String source) =>
      ToDoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
