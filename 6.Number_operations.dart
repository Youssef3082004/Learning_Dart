void main() {
  int a = 10; //! 10 / 0 is not finite
  double b = 20.25;
  String c = "50";
  print(a.isInfinite);
  print(a.isFinite);
  print(a.isNegative);
  print(a.sign);
  print(a.isEven);
  print(a.isOdd);
  print(a.abs());
  print(a.ceil());
  print(a.floor());
  print(a.compareTo(20));
  print(a.compareTo(10));
  print(a.compareTo(5));
  print(b.toInt());
  print(num.parse(c));

}
