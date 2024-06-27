import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super (key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage()
    );
  }
}

class FirstPage extends StatefulWidget {
   FirstPage({Key? key}) : super (key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
    int currentState = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold (
        appBar: AppBar(
          title: Row(children: [
            Image.asset("images/dm-logo.png", height: 60),
            const Text("Directed Machines Robot Release"),
          ],)
          
        ),
      body:  Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Verify you are connected to the proper wifi network"),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext){
                    return SecondPage();
                  }));
                },
                child: const Text("Click to begin release")),
            ],
          ),
        ),      
      ),
      );
  }
}

class SecondPage extends StatelessWidget {
   SecondPage({Key? key}) : super (key: key);
  int currentState = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Previous",
            icon: Icon(Icons.arrow_left_outlined)
          ),
          BottomNavigationBarItem(
            label: "Take Photo/Screenshot",
            icon: Icon(Icons.camera)),
          BottomNavigationBarItem(
            label: "Next",
            icon: Icon(Icons.arrow_right_outlined))
        ],
         currentIndex: currentState,
         onTap: (int index){
            if (index == 0){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext){
                    return FirstPage();
                  }));
            }
            if (index == 1){

            }
            if (index == 2){

            }
         },
      ),
    );
  }
}
