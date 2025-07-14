// abstract class is the class the used to inhertance only , can not call it 

void main() {
  Samsung mobile = new Samsung();
  print(mobile.brand);
}

abstract class Mobile {
  String brand = "";
}

class Samsung extends Mobile {
  String brand = "Samsung";
}
