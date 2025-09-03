void main() {
  List Names = ["Youssef", "Gamal", "Mohamed", "Aref","Ahmed","Asad"];
  Iterable Grand = Names.where((a) => a.toString().startsWith("A"));

  print(Grand);
}
