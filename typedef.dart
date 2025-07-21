typedef IntList = List<int>;
typedef Mapping<K, V> = Map<String, List<int>>;

void main() {
  IntList l = [1, 2, 3, 4, 5];
  print(l);

  Mapping<String, IntList> m = {'a': [1, 2, 3], 'b': [4, 5, 6]};
  print(m);
}