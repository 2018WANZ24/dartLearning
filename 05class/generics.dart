T getData1<T>(T value){
  return value;
}
T getData2<T extends String>(T value){
  return value;
}

class GenericsClass<T>{

  Set s1 = Set<T>();

  void add(T value){
    this.s1.add(value);
  }

  void info(){
    print(this.s1);
  }
}

abstract class Cache<T>{
  getByKey(String key);
  setByKey(String key, T value);
}
class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
  }

  @override
  setByKey(String key, T value) {
    print('key: $key, value: $value');
  }
  
}

void test01(){
  print(getData1<int>(3));
  print(getData2<String>('hello'));

  GenericsClass g1 = GenericsClass<int>();
  g1.add(1);
  g1.info();

  GenericsClass g2 = GenericsClass<String>();
  g2.add('hello');
  g2.info();
}

void test02(){
  //FileCache fc = FileCache<String>();
  //fc.setByKey('foo', 'bar');
  FileCache fc = FileCache<Map>();
  fc.setByKey('index', {'name': 'p1', 'age': 20}) ;
}

void main(){
  //test01();
  test02();
}
