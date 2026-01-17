import 'package:flutter/material.dart';
import 'package:practice/anatharscreen.dart';
import 'package:practice/register.dart';

class Home extends StatelessWidget {
  static String routName ="home";

   Home({super.key,});

  @override
  Widget build(BuildContext context) {
    ModelController modelController= ModalRoute.of(context)!.settings.arguments as ModelController;
    return Scaffold(
      appBar: AppBar(title: Text("ssassbs"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("name =>${modelController.name} "),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Email =>${modelController.Email}"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed(Anatherscreen.routName);
          }, child: Text("add")),


        ],
      ),
    );
  }
}
