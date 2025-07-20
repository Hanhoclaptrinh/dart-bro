void main() {
  /// set is a collection of unique elements
  /// set is unordered
  Set<int> s1 = {1, 2, 3, 4, 5};
  Set<String> s2 = {
    'Jimenez',
    'Moody',
    'Owen',
    'Hart',
    'Reid',
    'Byrd',
    'Nguyen',
    'Garrett',
    'Rodgers',
    'Dean',
  };
  s2.add('Hart'); // duplicates are not allowed
  print(s2);
  print(s1);

  var s3 = {1, 2, 3, 4, 5};
  var s4 = {5, 6, 7, 8, 9};
  print(s3.union(s4)); // union of s3 and s4
  print(s3.intersection(s4)); // intersection of s3 and s4
  print(
    s3.difference(s4),
  ); // difference of s3 and s4 (get all elements of s3 that are not in s4)
  print(s4.difference(s3));

  // convert to list
  var l1 = s1.toList();
  print(l1);

  // create new set from existed set
  var s5 = Set.from(s2);
  print(s5);

  // filter and map
  var filtered = s2.where((e) => e.startsWith('R'));
  print(filtered);

  var mapped = s2.map((e) => e.toUpperCase());
  mapped.forEach((e) {
    print(e);
  });
}
