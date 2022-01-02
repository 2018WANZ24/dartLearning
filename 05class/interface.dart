import 'dart:io';

abstract class Processor{
  int cores = 0;
  arch(String name);
}

abstract class Camera{
  String resolution = '';
  brand(String name);
}

class Phone implements Processor, Camera{
  @override
  int cores = 0;
  @override
  String resolution = '';

  @override
  arch(String name) {
    print('Arch: $name');
  }

  @override
  brand(String name) {
    print('Camera: $name');
  }
}
void main(){
}
