//! Static Keyword is a variblae when is changed, it 's change in all Instances


void main() {
  User userone = new User();
  User usertwo = new User();

  userone.name = "Mustafa";
  usertwo.name = "Mustafa";
  User.Middle = "Gamal";

  print(User.Middle);
  print(User.Middle);
}

class User {
  String name = "Youssef";
  static String Middle = "Awadalla";
}
