class Employee {
  int id;
  String name;
  double baseSalary;

  Employee(this.id, this.name, this.baseSalary);

  double calculateSalary() => baseSalary;
}

class FulltimeEmployee extends Employee {
  double bonus;

  FulltimeEmployee(int id, String name, double baseSalary, this.bonus)
    : super(id, name, baseSalary);

  @override
  double calculateSalary() => baseSalary + bonus;
}

class ParttimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  ParttimeEmployee(id, name, this.hoursWorked, this.hourlyRate)
    : super(id, name, 0);

  @override
  double calculateSalary() => hoursWorked * hourlyRate;
}

void main() {
  var employees = [
    FulltimeEmployee(1, 'Nguyen Van A', 1000, 200),
    FulltimeEmployee(2, 'Tran Thi B', 1000, 150),
    FulltimeEmployee(3, 'Le Van C', 1200, 300),
    ParttimeEmployee(4, 'Pham Thi D', 30, 20),
  ];

  var totalPay = 0.0;
  employees.forEach((e) {
    print('${e.name} - luong: ${e.calculateSalary()}');
    totalPay += e.calculateSalary();
  });
  print('Total pay: $totalPay');
}
