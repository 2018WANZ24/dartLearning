import 'lib/MyCustom.dart';
import 'dart:math';
//import 'lib/common.dart' hide f2;
import 'lib/common.dart' show f1, f3;
import 'lib/function.dart' deferred as func;

void test01(){
  MyCustom mc = MyCustom();
  mc.info();
  print(MyCustom.version);
}

void test02(){
  print(pi);
  print(min(3, 6));
}

void test03(){
  f1();
  f3();
  greet();
}

Future greet() async {
  await func.loadLibrary();
  func.f1();
}

void main(){
  //test01();
  //test02();
  test03();
}
