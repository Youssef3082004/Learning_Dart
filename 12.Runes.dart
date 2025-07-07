//! it trnaform letter to code and then decode it to it's orignal letters


void main() {
  String name = "Youssef";
  name.runes.forEach((action) {
    print(String.fromCharCode(action));
  });
}
