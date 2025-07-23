class Student {
  int id;
  String name;
  int age;
  double gpa;

  Student(this.id, this.name, this.age, this.gpa);

  void showInfo() {
    print('id: $id, name: $name, age: $age, gpa: $gpa');
  }

  bool gradeByGPA() {
    return gpa >= 7.0;
  }
}

class ManageStudent {
  List<Student> students = [];

  void addStudent(Student s) {
    students.add(s);
    print('student added successfully!');
  }

  void showAllStudent() {
    print('show all student');
    students.forEach((s) {
      s.showInfo();
    });
  }

  void showStudentByGPA() {
    print('show student that gpa >= 7.0');
    students.forEach((s) {
      if (s.gradeByGPA()) s.showInfo();
    });
  }
}

void main() {
  var s1 = Student(1, 'Nig1', 18, 8.0);
  var s2 = Student(2, 'Nig2', 18, 7.0);
  var s3 = Student(3, 'Nig3', 18, 9.0);
  var s4 = Student(4, 'Nig4', 18, 6.0);
  ManageStudent ms = ManageStudent();
  ms.addStudent(s1);
  ms.addStudent(s2);
  ms.addStudent(s3);
  ms.addStudent(s4);
  ms.showAllStudent();
  ms.showStudentByGPA();
}
