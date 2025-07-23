class Animal {
  var name, age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  Dog(name, age) : super(name, age);
  @override
  void makeSound() {
    print('$name barks');
  }
}

class Cat extends Animal {
  Cat(name, age) : super(name, age);
  @override
  void makeSound() {
    print('$name meows');
  }
}

void main() {
  var d = Dog('jack', 2);
  var c = Cat('tom', 3);
  d.makeSound();
  c.makeSound();
}
