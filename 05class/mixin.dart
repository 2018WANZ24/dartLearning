class MixinA{
  String name = 'MixinA';

  void printA(){
    print('A');
  }
}

class MixinB{
  String name = 'MixinB';

  void printB(){
    print('B');
  }
}

class MyClass with MixinA, MixinB{
}

void main(){
  MyClass c = MyClass();
  c.printA();
  c.printB();
  print(c.name);
}
