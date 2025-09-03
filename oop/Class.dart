void main() {
  Mobile mobile = new Mobile(name: "Samsung", screen: 10);

  print(mobile.Device_name);

}

class Mobile {
  String? name;
  int? screen;

  //! Method Class or Static Method
  void printScreen() {
    print("screen size  = $screen inch");
  }

  //! Setter
  set Change_name(String new_Value) {
    this.name = new_Value;
  }

  //! Getter
  String? get Device_name {
    return name;
  }

  //! Contructor like __init__ in python
  Mobile({required this.name, required this.screen}) {
    print("Nobile Name ${this.name} and Screen Size = ${this.screen}");
  }
}
