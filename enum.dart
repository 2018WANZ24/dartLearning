enum Color{red, green, blue}

void main(){
  print(Color.green.index);

  List<Color> colors = Color.values;
  print(colors);

  print(colors[0]);

  colors.forEach((element) {
    print('index: ${element.index}, value: $element');
  });
}
