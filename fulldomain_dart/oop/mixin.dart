mixin Swimmer {
  void swim() {
    print('Swimming');
  }
}

mixin Flyer {
  void fly() {
    print('Flying');
  }
}

class Duck with Swimmer, Flyer {
  void display() {
    print('I am a duck');
  }
}

class Fish with Swimmer {
  void display() {
    print('I am a fish');
  }
}

void main() {
  Duck duck = Duck();
  Fish fish = Fish();

  duck.display(); // Output: I am a duck
  duck.swim();    // Output: Swimming
  duck.fly();     // Output: Flying

  fish.display(); // Output: I am a fish
  fish.swim();    // Output: Swimming
}
