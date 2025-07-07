//! ( ~ ) to ignore .55555555

void main() {
  int a = 20;
  int b = 9;

  int c = a ~/ b;
  b++;
  a += 11;
  print("$c $b $a");
}
