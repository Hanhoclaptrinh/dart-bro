void main() {
  var r = ('a', 1, true); // tuple
  print(r);

  var person = (name: 'Nig', age: 18, isStudent: true, 32);
  print('person name: ${person.name}');
  print(person.$1); // 32

  print(r.$1);
  print(r.$2);
  print(r.$3);
}
