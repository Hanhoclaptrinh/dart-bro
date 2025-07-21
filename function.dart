// named function
int tinhTong(var a, var b, var c) {
  return a + b + c;
}

// arrow function
num area(var a, var b) => a * b;

// expression function
var a = () => print('xin chao');

void main() {
  print('tinh tong: ${tinhTong(1, 2, 3)}');
  print('dien tich hinh chu nhat: ${area(5, 7)}');
  a();
  a();
  a();
}
