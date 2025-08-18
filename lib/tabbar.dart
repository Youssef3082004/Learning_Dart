import 'package:flutter/material.dart';

void main(){
  runApp(MyApp_stateful());
}


class MyApp_stateful extends StatefulWidget{
  const MyApp_stateful({super.key});
  @override
  State<MyApp_stateful> createState() => _MyApp_stateful();
}




class _MyApp_stateful extends State<MyApp_stateful> with SingleTickerProviderStateMixin {
    
    
    TabController? tabController;

    @override
    void initState(){
      tabController = TabController(length: 3, vsync: this);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {

    //! =============================================================== Tabbar ===========================================================
    List<Tab> Tabs = [
      Tab(text: "Medcine",icon: Icon(Icons.medical_information_rounded),),
      Tab(text: "Home",icon: Icon(Icons.home),),
      Tab(text: "Chatbot",icon: Icon(Icons.chat_sharp),)];
    var Tabbar = TabBar(tabs:Tabs,indicatorColor: Colors.black,labelColor: Colors.black,unselectedLabelColor: Colors.white,controller: tabController,);
    
    //! =============================================================== Tabbar Views ===========================================================
    List<Tab> TabsView = [Tab(child: Column(children: [Text("Medcine"),MaterialButton(onPressed: () => tabController!.animateTo(1),child: Text("Go To Home"),)],)),
    Tab(child: Text("Home"),),Tab(child: Text("Chatbot"),)]; 
    var Tabview = TabBarView(children:TabsView,controller: tabController, );
    
    //! =============================================================== Appbar ===========================================================
    AppBar appbarscreen = AppBar(title: Text("First app"),elevation: 30.0,centerTitle: true,backgroundColor: Colors.blue,shadowColor: Colors.black,bottom: Tabbar);

    //! =============================================================== Container ===========================================================
    Container screencontainer = Container(padding: EdgeInsets.all(10),alignment:Alignment.center,child: Tabview,  );    
    var mainapp = Scaffold(appBar: appbarscreen,body: Center(child:screencontainer));
    // DefaultTabController tabController = DefaultTabController(child:mainapp ,length: 3,);
    return MaterialApp(home: mainapp);
  }
}
