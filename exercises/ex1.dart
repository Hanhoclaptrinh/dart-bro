// import 'dart:io';

// typedef IntList = List<int>;
// typedef StringList = List<String>;
// typedef SetS = Set<String>;
// typedef MapSI<K, V> = Map<String, int>;
// typedef MapSS<K, V> = Map<String, String>;

// void main() {
//   IntList l = [1, 2, 3, 4, 5, 6];
//   int c1 = 0, c2 = 0;
//   l.forEach((val) {
//     if (val % 2 == 0) c1++;
//     else c2++;
//   });
//   print('number of even: $c1, number of odd: $c2');
// }

// void main() {
//   StringList l = ['An', 'Bình', 'An', 'Trang', 'Bình'];
//   SetS s = {};
//   l.forEach((val) {
//     s.add(val);
//   });
//   print(s);
// }

// void main() {
//   StringList l = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple'];
//   MapSI m = {};
//   l.forEach((val) {
//     if (m.containsKey(val)) m[val] = m[val]! + 1;
//     else m[val] = 1;
//   });
//   m.forEach((key, value) => print('$key: $value'));
// }

// void main() {
//   IntList l = [4, 2, 9, -1, 0, 12];
//   var max = l[0], min = l[0];
//   l.forEach((val) {
//     if (val > max) max = val;
//     if (val < min) min = val;
//   });
//   print('max: $max, min: $min');
// }

// void main() {
//   MapSS m = {
//     'Betty': '393511591',
//     'Isaac': '117101346',
//     'Edwin': '919356614',
//     'Rhoda': '727399448',
//     'Dorothy': '423553221',
//     'Jackson': '744939812',
//     'Kyle': '999321658',
//     'Nathan': '363105989',
//     'Katie': '836242849',
//     'Elva': '400784331'
//   };
//   while (true) {
//     print('1. Add contact\n2. Find contact\n3. Print contact\n0. Exit');
//     int choice = int.parse(stdin.readLineSync()!);
//     switch (choice) {
//       case 1:
//         addContact(m);
//         break;
//       case 2:
//         findContact(m);
//         break;
//       case 3:
//         printContact(m);
//         break;
//       case 0:
//         return;
//     }
//   }
// }

// void addContact(MapSS m) {
//   stdout.write('name: ');
//   String name = stdin.readLineSync()!;
//   stdout.write('phone: ');
//   String phone = stdin.readLineSync()!;
//   m.putIfAbsent(name, () => phone);
// }

// void findContact(MapSS m) {
//   stdout.write('name: ');
//   String name = stdin.readLineSync()!;
//   print('phone: ${m[name]}');
// }

// void printContact(MapSS m) {
//   m.forEach((key, value) => print('$key: $value'));
// }
