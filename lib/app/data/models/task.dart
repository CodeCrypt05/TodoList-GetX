class Task {
  final String title;
  final int icon;
  final String color;
  final List<dynamic>? todos;

  Task({
    required this.title,
    required this.icon,
    required this.color,
    this.todos,
  });

  factory Task.formJson(Map<String, dynamic> json) => Task(
        title: json["title"],
        icon: json["icon"],
        color: json["color"],
        todos: json["todos"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "icon": icon,
        "color": color,
        "todos": todos,
      };
}
