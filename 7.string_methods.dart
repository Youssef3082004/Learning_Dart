void main() {
  String S = "Youssef Mustafa";

  print(S.length);
  print("${S.length + 10}");
  print(S.isEmpty);
  print(S.isNotEmpty);
  print(S.toUpperCase());
  print(S.toLowerCase());
  print(S.trim());
  
  print(S.replaceAll("Mustafa", "Gamal"));
}
