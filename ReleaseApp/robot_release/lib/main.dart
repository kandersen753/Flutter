import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        appBar: AppBar(
          title: const Text("Directed Machines Robot Release"),
        ),
      body: const Center(child: Text ('body')),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Previous",
            icon: Icon(Icons.arrow_left_outlined)
          ),
          BottomNavigationBarItem(
            label: "Next",
            icon: Icon(Icons.arrow_right_outlined))
        ],
      ),
      ),
    );
  }
}