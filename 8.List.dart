void main() {
  List name = ["Youssef", "Mustafa", "Gamal", 10];
  print(name[0]);
  //! add to list in index
  name.add("2004");

  //! add all elements in the list
  name.addAll(["Hello", "World"]);

  //! add elements in determinded index
  name.insert(0, ["Hello", "World"]);

  //! add all elements in determinded index
  name.insertAll(0, ["Hello", "World"]);

  //!
  name.replaceRange(0, 2, ["Hello", "Wrld"]);

  print(name);

  //! print each element in the list with variable names
  name.forEach((names) {
    print(names);
  });

  //! list Methods
  print(name.first);
  print(name.last);
  print(name.isEmpty);
  print(name.length);
  print(name.reversed.toList());
  print(name.sublist(5, 9));
  name.shuffle();
  print(name.asMap());
  var namestype = name.whereType<List>();
  print(namestype);

  List Numbers = [1, 5, 8, 9, 8, 7, 100, 255, 874];
  //! like lamda function in python (n) => n > 9    n is each element in numbers list
  print(Numbers.firstWhere((n) => n > 9));
  print(Numbers.any((n) => n < 9));
  print(Numbers.every((n) => n < 0));
  print(Numbers.take(5).toList());




  //! is print if the list have only one element
  // print(name.single);
}
