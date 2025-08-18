import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {

  final String? name;
  final String? email;
  final String? Date;

  const MyWidget({super.key,required this.name,required this.email,required this.Date});

  @override
  Widget build(BuildContext context) {
    return Card(child: 
    ListTile(title: Text(name!),
    subtitle: Text(email!),
    trailing: Text(Date!),
    
    ));
  }
}
