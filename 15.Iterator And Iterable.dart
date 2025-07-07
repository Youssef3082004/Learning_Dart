void main() {
  List Names = ["Youssef", "Gamal", "Mohamed", "Aref", "Ahmed", "Asad"];

  for (String name in Names) {
    print(name.startsWith("A"));
  }

  Iterator leeter = Names.iterator;

  while (leeter.moveNext()) {
    print(leeter.current);
  }
}
