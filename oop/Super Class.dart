//! Super keyword is used to mention the perant class attributes   
void mina() {}

class One {
  String username;

  One(this.username);
}

class Two extends One {
  Two(String username) : super(username); 
}

