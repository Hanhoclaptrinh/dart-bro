void main() {
  /// map is a collection of key-value pair
  /// key is unique
  /// value can be duplicate
  /// key-value can be any type
  Map<String, dynamic> infor = {
    'name': 'Bro',
    'age': 18,
    'isStudent': true,
    'gpa': 3.6,
    'hobbbies': ['coding', 'reading', 'sleeping'],
  };
  print(infor);
  print(infor['name']); // get element by key
  infor['name'] = 'Nig'; // update element by key
  infor.putIfAbsent('phone', () => 123456789); // add element if not exist

  // add more entries
  infor.addAll({
    'address': '123 Main St, New York, NY 10001',
    'city': 'New York',
    'state': 'NY',
    'zip': '10001',
  });
  infor.forEach((k, v) {
    print('$k : $v');
  });

  infor = infor.map(
    (k, v) => MapEntry(k.toUpperCase(), v.toString().toUpperCase()),
  );
  print(infor);

  var filtered = infor.entries.where((e) => e.value is String).toList();
  print('filtered: $filtered');

  print(infor.keys); // get keys
  print(infor.values); // get values
  print(infor.entries); // get entries

  // remove element
  infor.remove('zip');
  infor.removeWhere((k, v) => v == null);
  infor.clear();
}
