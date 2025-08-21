import 'package:flutter/material.dart';
// import 'package:first_app/settingpage.dart';


class HomePage extends StatelessWidget{

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

  //! =============================================================== Appbar ===========================================================
    AppBar appbarscreen = AppBar(title: Text("Home"),elevation: 1.5,centerTitle: true,backgroundColor: Colors.blue,actions: [IconButton(onPressed:(){print("Hello");} ,icon: Icon(Icons.run_circle,size: 30,color: Colors.deepOrange))]);

  
  //! =============================================================== Alert Dialog ===========================================================
    var dialog = MaterialButton(onPressed: () => appear_dialog(context)
    ,child: Text("Show alert Dialog"),color: Colors.black,textColor: Colors.white,);
    
  //! =============================================================== Column ===========================================================

    var Home_button = MaterialButton(onPressed: () => Navigator.of(context).pushNamed("setting"),child: Text("Go To Setting"),textColor: Colors.white,color: Colors.black,);
    var Home_buttonback = MaterialButton(onPressed: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context) => SettingPage()),(route) => false),child: Text("Back"),textColor: Colors.white,color: Colors.black,);

    var controls = Column(children: [Text("Home",textAlign: TextAlign.center,),Home_button,Home_buttonback,dialog],mainAxisAlignment: MainAxisAlignment.center,);

    

    var main_app = Scaffold(appBar: appbarscreen,body: Container(child: controls,alignment: Alignment.center,color: Colors.white,));
   return main_app ;
  }




  void appear_dialog(BuildContext context) => showDialog(barrierDismissible: false,context: context, builder: (context){
  
    return AlertDialog(
      title: Text("Title"),
      content: Text("Hello in Flutter Corse"),
      actions: [TextButton(onPressed: () => Navigator.pop(context), child: Text("ok"))],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      
    );
  });




}


class SettingPage extends StatelessWidget{


  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
  //! =============================================================== Appbar ===========================================================
    AppBar appbarscreen = AppBar(title: Text("Setting"),elevation: 1.5,centerTitle: true,backgroundColor: Colors.blue,actions: [IconButton(onPressed:(){print("Hello");} ,icon: Icon(Icons.run_circle,size: 30,color: Colors.deepOrange))]);

  //! =============================================================== Column ===========================================================

    var Home_button = MaterialButton(onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomePage())),child: Text("Go To Home"),textColor: Colors.white,color: Colors.black,);
    var Home_buttonback = MaterialButton(onPressed: () => Navigator.of(context).pop(),child: Text("Back"),textColor: Colors.white,color: Colors.black,);

    var controls = Column(children: [Text("Settings",textAlign: TextAlign.center),Home_button,Home_buttonback],mainAxisAlignment: MainAxisAlignment.center,);


    var main_app = Scaffold(appBar: appbarscreen,body: Container(child: controls,color: Colors.white,alignment: Alignment.center));
   return main_app ;
  }
}
