// implement class is to copy class with it's all properties and must write it all

void main() {
  var phone2 = S20();
  S20 phone = S20();
  print(phone.brand);
  print(phone.type);
  print(phone2.type);

}

abstract class Mobile {
  String? get brand;
  set brand(String? value);

  String? get type;
  set type(String? value);
}

class Samsung {
  String? model;
}

class S20 implements Mobile, Samsung {
  @override
  String? brand = "Samsung";

  @override
  String? type = "2025";

  String? model;
}
