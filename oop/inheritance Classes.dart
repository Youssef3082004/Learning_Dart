//! mixin class is abstarct class that can not intiated 
//! is used to allow him to inhertance with other classes  

void main() {
  oneu thr = new oneu();
  print(thr.username);
}

mixin one {String username = "Youssef";}
class oneu with one{}
mixin Two {String password = "gghtiot";}
class three with one, Two {}
