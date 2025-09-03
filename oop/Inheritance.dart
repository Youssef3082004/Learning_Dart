void main() {
  Samsung sam = new Samsung();
  sam.CPU = "Snapdragon";

  print(sam.CPU);
}

class Mobile {
  String? Screen;
  String? camera;
  String? CPU;
  String? Memory;
}

class Samsung extends Mobile {}
