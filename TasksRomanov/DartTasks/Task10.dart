class Student {
  String name;
  String group;
  double grade;

  Student(this.name, this.group, this.grade);
}

class University {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  void sortByName() {
    students.sort((a, b) => a.name.compareTo(b.name));
  }

  void filterByGrade(double minGrade) {
    students.where((student) => student.grade >= minGrade).forEach((student) {
      print("Студент: ${student.name}, оценка: ${student.grade}, группа: ${student.group}");
    });
  }
}

void main() {
  University university = University();
  university.addStudent(Student("Василий", "Группа 3", 3.8));
  university.addStudent(Student("Аркадий", "Группа 1", 4.5));
  university.addStudent(Student("Григорий", "Группа 4", 5.0));
  university.addStudent(Student("Борис", "Группа 2", 4.2));
  
  university.sortByName();
  university.filterByGrade(4.1);
}