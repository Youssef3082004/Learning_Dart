import 'package:flutter/material.dart';

void main() {
  runApp(MyApp_stateful());
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


  @override
  Widget build(BuildContext context) {
    //! =============================================================== Appbar ===========================================================
    AppBar appbarscreen = AppBar(title: Text("First app"),elevation: 1.5,centerTitle: true,backgroundColor: Colors.blue);

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



    //! =============================================================== Container ===========================================================
    // BoxDecoration containerDecoration =BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(90),border: Border.all(color: Colors.black,width: 1),boxShadow: [BoxShadow(color: Colors.black,offset: Offset(1, 5),blurRadius: 20,blurStyle: BlurStyle.solid)]) ;
    Container screencontainer = Container(padding: EdgeInsets.all(10),alignment:Alignment.center, 
    child:Textfeilds_colmn);





    var mainapp = Scaffold(appBar: appbarscreen,body: Center(child:screencontainer));
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
    
  }
