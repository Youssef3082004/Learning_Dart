void main() {
  Status user = Status.offline;
  print(user.name);

  print(days.fri.name);
}

enum Status { online, offline }

enum days { mon,thu,wed,fri }
