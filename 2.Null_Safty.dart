// Null safty is to make variable nullable which not making error when run program

//! Two methods to null sfaty is ? ti tell compiler that this var can accept Null value 
//! or using late to tell compiler that we will intlize just this var and give it value in next lines 

void main() {
  String? name;
  late String lastname;
  lastname = "awadalla";
  print("$name $lastname");
}
