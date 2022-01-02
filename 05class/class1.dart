class Point{
  num x = 0;
  num y = 0;
  num z = 0;

  Point(this.x, this.y, this.z);

  Point.origin(){
    x = 3;
    y = 3;
    z = 3;
  }
  
  Point.fromJson({num x = 0, num y = 0, num z = 0}){
    this.x = x;
    this.y = y;
    this.z = z;
  }

  Point.twoD(num x, num y): this(x, y, 0);
}

class Circle{

  final double PI = 3.14;
  num r = 0;

  Circle(this.r);

  num get area{
    return this.PI * this.r * this.r;
  }

  set setR(r){
    this.r = r;
  }
}

class Phone{

  @deprecated
  void activate(){
    turnOn();
  }

  void turnOn(){
    print('Turn on');
  }
}

void test01(){
  Point p1 = Point.origin();
  print('(${p1.x}, ${p1.y}, ${p1.z})');
  Point p2 = Point.fromJson(x: 6, y: 6, z: 6);
  print('(${p2.x}, ${p2.y}, ${p2.z})');
  Point p3 = Point.twoD(4, 5);
  print('(${p3.x}, ${p3.y}, ${p3.z})');

  Circle c1 = Circle(2);
  print(c1.area);
  c1.setR = 20;
  print(c1.area);
}

void test02(){
  Phone p = new Phone();
  p.activate();
}

void main(){
  //test01();
  test02();
}
