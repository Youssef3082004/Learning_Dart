void main() {
  Samsung sam = new Samsung();

  sam.print_screen("HHH");
}

class Mobile {
  String? Screen = "6.3";
  String? camera;
  String? CPU;
  String? Memory;

  void print_screen(String Val) {
    print("$Screen");
  }
}

class Samsung extends Mobile {
  String? Screen = "6.5";

  @override
  void print_screen(String val) {
    print("$Screen , Hello");
  }
}
