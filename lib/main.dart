import 'package:flutter/material.dart';
import 'custom.dart'; 

void main() {
  runApp(Tabbbar());
}

class MyApp extends StatelessWidget{

  MyApp({super.key});

  final List data = [
    {"name":"Youssef","last_name":"Awadalla","age":50},
    {"name":"Gamal","last_name":"mohamed","age":25},
    {"name":"Hamada","last_name":"aref","age":40},
    {"name":"Hamada","last_name":"aref","age":40},
    {"name":"Hamada","last_name":"aref","age":40},
    {"name":"Hamada","last_name":"aref","age":40},
  ];

  @override
  Widget build(BuildContext context) {

    //! =============================================================== Appbar ===========================================================
    AppBar appbarscreen = AppBar(title: Text("First app"),elevation: 1.5,centerTitle: true,backgroundColor: Colors.blue,actions: [IconButton(onPressed:(){print("Hello");} ,icon: Icon(Icons.run_circle,size: 30,color: Colors.deepOrange))]);

    //! =============================================================== Text ===========================================================
    TextStyle textstyle = TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,backgroundColor: Colors.blue);
    Text textscreen = Text("First App Mady By Youssef Mustafa",style: textstyle); 

    //! =============================================================== Image ===========================================================
    // Image imageconatiner = Image.network("https://www.citypng.com/public/uploads/preview/google-logo-icon-gsuite-hd-701751694791470gzbayltphh.png");
    Image imageconatiner = Image.asset("images/gym.jpg",width:200,height:500,fit:BoxFit.cover,);

    //! =============================================================== Row & Column ===========================================================
    Column Controls = Column(children: [textscreen,imageconatiner,textscreen,imageconatiner],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center); 
    Row rowControls = Row(children: [textscreen,textscreen],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,spacing: 20,); 

    //! =============================================================== Wrap & SingleChildScrollView ===========================================================
    Wrap wrapControls = Wrap(children: [textscreen,textscreen]); 
    SingleChildScrollView scroll_column = SingleChildScrollView(child: Controls,scrollDirection: Axis.horizontal);  
    SingleChildScrollView scroll_row = SingleChildScrollView(child: rowControls,scrollDirection: Axis.horizontal,);  

    //! =============================================================== listView & listView Saperated ===========================================================
    // ListView app_listview = ListView(scrollDirection: Axis.horizontal,children: [Container(width: 150,height: 300,color: Colors.teal),Container(width: 150,height: 300,color: Colors.red,),Container(width: 150,height: 300,color: Colors.blue,)],);
    // ListView app_listview = ListView.builder(itemCount: data.length,itemBuilder: (context, index) {return Container(color: index.isEven? Colors.blue: Colors.red, child: Text("${data[index]["name"]}"));});
    // ListView app_listview = ListView.separated(separatorBuilder: (context, index) {return Container(color: Colors.black,height: 1,);},itemCount: data.length,itemBuilder: (context, index) {return Container(width:100,color: index.isEven? Colors.blue: Colors.yellowAccent, child: Text("${data[index]["name"]}",textAlign: TextAlign.center,));});

    //! =============================================================== Grid view ===========================================================
    // var grid_mange = SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 20,childAspectRatio: 5);
    // GridView app_gridview = GridView.builder(gridDelegate:grid_mange ,itemCount: data.length,itemBuilder: (context, index) {return Container(color: index.isEven? Colors.blue: Colors.red, child: Text("${data[index]["name"]}",textAlign: TextAlign.center,));});

    //! =============================================================== Card & ListTile ===========================================================
    ListTile app_listtile = ListTile(onTap: () {print("Hello");},title:Text("Listtile"),subtitle: Text("data"),leading: Icon(Icons.place),trailing: Icon(Icons.access_alarm_sharp));
    Card app_card = Card(child:app_listtile,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) );
    //! =============================================================== Icon And IconButton ===========================================================
    Row Icon_row = Row(children:[Icon(Icons.stacked_bar_chart),IconButton(onPressed: (){print("Hello World");}, icon: Icon(Icons.access_alarm_sharp))]);

    //! =============================================================== Expanded & Responsive ===========================================================
    Row Expanded_app = Row(children:[
      Expanded(child: Container(height: 100,color: Color(0xffffffff),),flex: 1,),
      Expanded(child: Container(height: 100,color: Colors.yellow,)),
      Expanded(child: Container(height: 100,color: Colors.blueAccent,))
    ]);

    //! =============================================================== Buttons ===========================================================
    MaterialButton mat_button = MaterialButton(onPressed: (){},child: Text("on pressed"),textColor: Colors.white,color: Colors.black,); 
    // ElevatedButton elv_button = ElevatedButton(onPressed: (){},child: Text("on pressed"),style: ButtonStyle(backgroundColor: MaterialStateProperty),); 
    Column Buttons_Coulmn = Column(children: [mat_button]);

    //! ===============================================================  Stack  ===========================================================
    Stack app_stack = Stack(alignment: AlignmentDirectional.center,children: [
     Container(width: 300,height: 300,color:Colors.blue[300] ,),
     Container(width: 200,height: 200,color:Colors.blue[700] ,),
     Container(width: 100,height: 100,color:Colors.blue[900] ,),

     Positioned(child: Text("Youssef"),left: 0,top: 0,)
    ],);

   

    //! =============================================================== Container ===========================================================
    BoxDecoration containerDecoration =BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(90),border: Border.all(color: Colors.black,width: 1),boxShadow: [BoxShadow(color: Colors.black,offset: Offset(1, 5),blurRadius: 20,blurStyle: BlurStyle.solid)]) ;
    Container screencontainer = Container(padding: EdgeInsets.all(0),alignment:Alignment.center,decoration:containerDecoration, 
    child:app_stack);




    var mainapp = Scaffold(appBar: appbarscreen,body: Center(child:screencontainer));
    return MaterialApp(home: mainapp);
  }
}




class MyApp_stateful extends StatefulWidget{

  const MyApp_stateful({super.key});
  
  @override
  State<MyApp_stateful> createState() => _MyApp_stateful();

}



class _MyApp_stateful extends State<MyApp_stateful> {


  int i = 0 ;
  bool val = false;
  bool checkbox_value = false;
  String? Country;
  String? Textfeild_value;
  TextEditingController textfeild_value = TextEditingController() ;
  GlobalKey<FormState> formstate = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldstate = GlobalKey();

  String? name;


  @override
  Widget build(BuildContext context) {
    //! =============================================================== Appbar ===========================================================
    AppBar appbarscreen = AppBar(title: Text("First app"),elevation: 30.0,centerTitle: true,backgroundColor: Colors.blue,shadowColor: Colors.black,);

    //! =============================================================== Drawer ===========================================================
    Row banner_user = Row(children: [Container(width: 40,height: 40,child: ClipRRect(child:Image.asset("images/gym.jpg",fit: BoxFit.cover,),borderRadius: BorderRadius.circular(20))),Expanded(child: ListTile(title: Text("awadallayossef232"),subtitle: Text("awadallayossef@gmail.com"),))],);
    ListView drawer_widgets = ListView(children: [
    banner_user,
    ListTile(title: Text("Home"),leading: Icon(Icons.home),onTap: () {}),
    ListTile(title: Text("Account"),leading: Icon(Icons.account_balance),onTap: () {}),
    ListTile(title: Text("order"),leading: Icon(Icons.check_box),onTap: () {}),
    ListTile(title: Text("about us"),leading: Icon(Icons.help),onTap: () {}),
    ListTile(title: Text("contact us"),leading: Icon(Icons.phone_android_outlined),onTap: () {}),
    ListTile(title: Text("sign out"),leading: Icon(Icons.logout_outlined),onTap: () {}),
    ListTile(title: Text("Home"),leading: Icon(Icons.home),onTap: () {}),
    ListTile(title: Text("Home"),leading: Icon(Icons.home),onTap: () {}),
    ],);
    Drawer app_drawer = Drawer(child: Container(child: drawer_widgets,padding: EdgeInsets.all(10),),);
    MaterialButton open_drawer_button = MaterialButton(onPressed: (){scaffoldstate.currentState!.openDrawer();},child: Text("on pressed"),textColor: Colors.white,color: Colors.black,); 


    //! =============================================================== Text ===========================================================
    TextStyle textstyle = TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,backgroundColor: Colors.white);
    Text counter = Text("Counter = $i",style: textstyle); 

    //! =============================================================== Buttons ===========================================================
    IconButton add = IconButton(onPressed:() => increase(), icon: Icon(Icons.add));
    // IconButton add = IconButton(onPressed: () => increase(), icon: Icon(Icons.add));
    IconButton remove = IconButton(onPressed: () => decrease(), icon: Icon(Icons.remove));
    Column Buttons_Coulmn = Column(children: [add,counter,remove],mainAxisAlignment: MainAxisAlignment.center,);

    //! ===============================================================  SwitchListTile & switch ===========================================================
    Switch App_switch = Switch(value: val, onChanged: (bool val) => change_switch(val)); 
    SwitchListTile App_switchtile = SwitchListTile(title: Text("data"),value: val, onChanged: (bool val) => change_switch(val)); 

    //! ===============================================================  SwitchListTile & switch ===========================================================
    RadioListTile App_radio1 = RadioListTile(title: Text("Egypt"),value: "Egypt", groupValue: Country ,onChanged: (value) => change_radio(value),);
    RadioListTile App_radio2 = RadioListTile(title: Text("USA"),value: "USA", groupValue: Country ,onChanged: (value) => change_radio(value),);
    RadioListTile App_radio3 = RadioListTile(title: Text("Jordan"),value: "Jordan", groupValue: Country ,onChanged: (value) => change_radio(value),);
    RadioListTile App_radio4 = RadioListTile(title: Text("Germany"),value: "Germany", groupValue: Country ,onChanged: (value) => change_radio(value),);

    var redio_colmn = Column(children: [App_radio1,App_radio2,App_radio3,App_radio4],);



    //! ===============================================================  CheckboxListTile & Checkbox  ===========================================================
    CheckboxListTile App_Checkbox1 = CheckboxListTile(title: Text("Egypt"),value: checkbox_value ,onChanged: (value) => Change_Checkbox(value!),);
    CheckboxListTile App_Checkbox2 = CheckboxListTile(title: Text("USA"),value:checkbox_value,  onChanged: (value) => Change_Checkbox(value!),);
    CheckboxListTile App_Checkbox3 = CheckboxListTile(title: Text("Jordan"),value:checkbox_value  ,onChanged: (value) => Change_Checkbox(value!),);
    CheckboxListTile App_Checkbox4 = CheckboxListTile(title: Text("Germany"),value:  checkbox_value,onChanged: (value) => Change_Checkbox(value!),);

    var checkbox_colmn = Column(children: [App_Checkbox1,App_Checkbox2,App_Checkbox3,App_Checkbox4],);

    
    

    //! =============================================================== TextField ===========================================================
    var decoration_textfeild = InputDecoration(hintText: "Username",border: OutlineInputBorder(),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))); 
    TextField app_textfeild = TextField(decoration: decoration_textfeild,keyboardType: TextInputType.name,controller:textfeild_value ,onChanged: (value) => onchange_textfeild(value),maxLength: 20,);
    // MaterialButton mat_button = MaterialButton(onPressed: (){print(textfeild_value.text);},child: Text("on pressed"),textColor: Colors.white,color: Colors.black,); 

    var Textfeilds_colmn = Column(children: [app_textfeild,Text("$Textfeild_value")],);

    //! =============================================================== TextFormField validator ===========================================================

    var app_form = Form(key:formstate ,child: TextFormField(obscureText: true,autovalidateMode: AutovalidateMode.always,validator: (value) => form_validotor(value),onSaved: (newValue) => name = newValue,));
    // MaterialButton mat_button = MaterialButton(onPressed:() => validate(),child: Text("on pressed"),textColor: Colors.white,color: Colors.black,); 

    var Textfeildsfrom_colmn = Column(children: [app_form],);



    //! =============================================================== Container ===========================================================
    // BoxDecoration containerDecoration =BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(90),border: Border.all(color: Colors.black,width: 1),boxShadow: [BoxShadow(color: Colors.black,offset: Offset(1, 5),blurRadius: 20,blurStyle: BlurStyle.solid)]) ;
    Container screencontainer = Container(padding: EdgeInsets.all(10),alignment:Alignment.center, 
    child: open_drawer_button,);





    var mainapp = Scaffold(key: scaffoldstate,appBar: appbarscreen,drawer: app_drawer,body: Center(child:screencontainer));
    return MaterialApp(home: mainapp);
  }


  void increase(){
    setState(() {
      i++;
      print(i);      
    });
  }

  void decrease(){
    setState(() {
      i--;
      print(i);      
    });
  }


  void change_switch(bool value) => setState(() {
    val = value;
  });

  void change_radio(String val) => setState(() {
    Country = val ;    
  });

  void Change_Checkbox(bool value) => setState(() {
    checkbox_value = value;
  });

  void onchange_textfeild(String val) => setState(() {
    Textfeild_value = val;
  });


  String? form_validotor (String? value) {
    if(value == null || value.isEmpty){
      return "Feild is empty";
    }

    if (value.length > 10){
      return "Is larger than 10 Letters";
    }
    return null;
  } 


  void validate() {
    if(formstate.currentState!.validate())
    {
    formstate.currentState!.save();
      print(name);
      print("Valid");
    } 
    else
    {
      print("Hello");
    }

  }
    
  }



class Tabbbar extends StatefulWidget{
  const Tabbbar({super.key});
  @override
  State<Tabbbar> createState() => _Tabbbar();
}



class _Tabbbar extends State<Tabbbar> with SingleTickerProviderStateMixin {

  TabController? tabController;

  @override
  void initState(){
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  int selectedindex = 0;



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

    //! =============================================================== Bottem Navigitor Bar ===========================================================
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
    ];
  
    var app_navbar = BottomNavigationBar(currentIndex: selectedindex,items: items,backgroundColor: Colors.blue,selectedItemColor: Colors.black,unselectedItemColor: Colors.white,onTap:(int val) =>Change_pages(val));
    //! =============================================================== PageView ===========================================================  
    // PageView app_pageview = PageView(children: [Text("page 1"),Text("page 2")],reverse: true,onPageChanged: (value) => print(value),);
     
    List<Text> widgets = [Text("page 1"),Text("page 2"),Text("page 3")];
    PageView app_pageview = PageView.builder(itemCount: widgets.length,itemBuilder: (context, index) => widgets[index],);


    //! =============================================================== Custom Widget ===========================================================  

    Column cw_row = Column(children: [MyWidget(name: "Youssef Awadalla", email: "awadallayossef@gmail.com", Date: "30-8-2004")],);


    //! =============================================================== Appbar ===========================================================  
    AppBar appbarscreen = AppBar(title: Text("First app"),elevation: 0.0,centerTitle: true,backgroundColor: Colors.blue,shadowColor: Colors.black,bottom: Tabbar,);

    //! =============================================================== Container ===========================================================
    // BoxDecoration containerDecoration =BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(90),border: Border.all(color: Colors.black,width: 1),boxShadow: [BoxShadow(color: Colors.black,offset: Offset(1, 5),blurRadius: 20,blurStyle: BlurStyle.solid)]) ;
    // Container screencontainer = Container(padding: EdgeInsets.all(10),alignment:Alignment.center,child: Tabview,  );
    Container screencontainer = Container(padding: EdgeInsets.all(10),alignment:Alignment.center,child: cw_row,  );



    
    var mainapp = Scaffold(appBar: appbarscreen,body: Center(child:screencontainer),bottomNavigationBar: app_navbar,);
    // DefaultTabController tabController = DefaultTabController(child:mainapp ,length: 3,);
    return MaterialApp(home: mainapp);
  }




  void Change_pages(int val) => setState(() {
    selectedindex = val;
  });
}




