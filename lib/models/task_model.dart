class TaskModel {
  String title;
  String discreption;
  DateTime date;
  bool isDone;

  TaskModel(
      {required this.title,
      required this.discreption,
      required this.date,
      this.isDone = false});
}
