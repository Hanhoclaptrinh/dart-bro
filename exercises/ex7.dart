import 'dart:async';
import 'dart:math';

class Task {
  int id;
  String name;
  String status; // pending, in-progress, completed

  Task(this.id, this.name) : status = 'pending';

  Future<void> markComplete() async {
    print("Task $id dang duoc xu ly...");
    Future<String> f = Future.delayed(
      Duration(seconds: Random().nextInt(3) + 1),
      () => "Task $id da hoan thanh",
    );
    String result = await f;
    status = 'completed';
    print(result);
  }
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task t) {
    tasks.add(t);
  }

  Future<void> markAllComplete() async {
    await Future.wait(tasks.map((t) => t.markComplete()));
    print('All tasks completed!');
    tasks.forEach((t) {
      print('Task ${t.id} - ${t.name}: ${t.status}');
    });
  }
}

void main() async {
  TaskManager tm = TaskManager();
  tm.addTask(Task(1, 'Task 1'));
  tm.addTask(Task(2, 'Task 2'));
  tm.addTask(Task(3, 'Task 3'));
  await tm.markAllComplete();
}
