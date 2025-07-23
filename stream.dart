void stream() {
  print('test stream in dart');
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (x) => (x + 1) * 5).take(50); // thuc hien tang 5 moi giay
  stream.listen(
    (x) => print(x),
    onDone: () => print('done 50'),
    onError: (e) => print(e),
  );
}

void main() {
  stream();
}
