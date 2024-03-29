class Task {
  final String id;
  final String title;
  final String description;
  String? enDescription;
  final String state;
  final String userId;
  final String date;

  Task({
    required this.id,
    required this.title,
    required this.description,
    this.enDescription,
    required this.state,
    required this.userId,
    required this.date,
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        enDescription: json["enDescription"],
        state: json["state"],
        userId: json["userId"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "state": state,
        "userId": userId,
        "date": date,
      };
}
