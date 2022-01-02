abstract class Phone{

  void processor();

  void camera();

  void info(){
    print('Info');
  }
}

class Xiaomi extends Phone{

  @override
  void processor(){
    print('Xiaolong 888');
  }

  @override
  void camera(){
    print('Sanxing camera');
  }
}
void main(){
  Xiaomi m1 = Xiaomi();
  m1.processor();
  m1.camera();
  m1.info();
}
