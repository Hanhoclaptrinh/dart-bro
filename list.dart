void main() {
  List<String> lst1 = ['a', 'b', 'c']; // list has elements
  var lst2 = [1, 2, 3]; // list with var type
  List<int> lst3 = []; // empty list
  var lst4 = List<int>.filled(3, 0); // filled list with 3 elements and value 0
  print(lst2);

  // add one element to list
  lst1.add('d');
  lst2.add(4);

  // add many elements to list
  lst1.addAll(['a', 'b', 'c']); // can add same element many times
  print(lst1);

  lst2.addAll(List<int>.filled(10, 1));
  print(lst2);

  lst1.insert(0, 'z'); // insert element at index
  print(lst1);

  lst3.insertAll(0, [1, 2, 3, 4, 5]); // insert many elements at index
  print(lst3);

  lst1.remove('a'); // remove element
  print(lst1);

  lst1.removeAt(0); // remove element at index
  print(lst1);

  lst1.removeLast(); // remove last element
  print(lst1);

  lst1.removeWhere((e) => (e) == 'b'); // remove element where condition is true
  print(lst1);

  lst2.removeRange(3, lst2.length); // remove range of elements
  print(lst2);

  lst1.clear(); // clear all elements
  print(lst1);

  // check empty
  print(lst1.isEmpty ? 'empty' : 'not empty');
  print(lst2.isNotEmpty ? 'not empty' : 'empty');

  // contain value
  print(lst2.contains(1) ? 'yes' : 'no');

  // sort list
  var lst5 = [52, 97, 71, 56, 14, 25, 11, 66, 68, 53];
  lst5.sort();
  print('list 5 after sort: ${lst5}');
  print('list 5 reversed: ${lst5.reversed}');

  var lst6 = ['Vietnam', 'Kazakhstan', 'Panama', 'Gabon', 'Guam'];
  var subList6 = lst6.sublist(0, 3); // get from index 0 to index 2
  print(subList6);
}
