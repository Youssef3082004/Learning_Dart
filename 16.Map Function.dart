void main() {
  List Names = ["Youssef", "Gamal", "Mohamed", "Aref", "Ahmed", "Asad"];

  var t = Names.map((a) => a.toString().length);

  var g = Names.map((a) {
    if (a == "Youssef") {
      return "Youssef Is Exist";
    }
  });

  print(t);
  print(g);
}
