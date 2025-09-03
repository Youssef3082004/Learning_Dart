void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 60];

  print(avg(numbers));
}

double avg(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}
