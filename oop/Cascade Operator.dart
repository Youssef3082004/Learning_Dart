
void main() {
  //! This is Cascade operator
  new Mobile().testone();
  //! This is Cascade operator
  new Mobile()..testone()..testtow();


}

class Mobile {
  void testone() {
    print("Test Function one");
  }

  void testtow() {
    print("Test Function two");
  }
}
