void main() {
  Map info = {"Youssef": 20};

  print(info["Youssef"]);
  print(info.keys);
  print(info.values);
  print(info.length);
  info.addAll({"hhh": 20});
  print(info);

  info.forEach((key, Value) {
    print("Key = ${key} , Value = ${Value}");
  });
}
