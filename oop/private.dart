class User {
  var username;

  User._(this.username);
  factory User.name() {
    return User._("Hamada");
  }
}
