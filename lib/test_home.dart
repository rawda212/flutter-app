import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.menu),
        title: Text("My App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("hi");
              printName();
            },
            icon: Icon(Icons.star),
          ),
          IconButton(
            onPressed: (){
            setState(() {
              counter++;
            });
            print(counter);
          }, icon: Text("$counter"),
          )
        ],
      ),
    );
  }
}
void printName(){
  print("hi Rawda");
}