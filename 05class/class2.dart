class Father{
  String name = 'p1';
  String job = '';

  Father(this.job);

  say(){
    print('I am ${this.name}');
  }
}

class Son extends Father{
  String name = 'p2';
  Son(String job): super(job);
}

void main(){
  Father f = Father('job1');
  Son s = Son('job2');
  print(f.job);
  print(s.job);
}
