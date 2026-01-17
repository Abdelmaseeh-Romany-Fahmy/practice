import 'package:flutter/material.dart';
import 'package:practice/home.dart';

class Anatherscreen extends StatelessWidget {
  TextEditingController nameController =TextEditingController();
  TextEditingController EmailController =TextEditingController();

  static String routName ="Anatherscreen";
  Anatherscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("practices"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:nameController ,

              decoration:

              InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),

                  hintText: "Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  label: Text("Name")
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: EmailController,
              decoration:

              InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),

                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  label: Text("Email")
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(Home.routName,arguments:ModelControllers(name: nameController.text,Email: EmailController.text ) );
            }, child: Text("add")),
          )

        ],
      ),
    );
  }
}
class ModelControllers{
  String name;
  String Email;

  ModelControllers({required this.name, required this.Email});


}