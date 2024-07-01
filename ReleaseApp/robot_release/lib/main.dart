import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage()
    );
  }
}

class FirstPage extends StatefulWidget {
   const FirstPage({super.key});

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
            const Text("Directed Machines Robot Release", textScaler: TextScaler.linear(.5)),
          ],),
          automaticallyImplyLeading: false,
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
                    return const RobotOverview();
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

class RobotOverview extends StatefulWidget {
   const RobotOverview({super.key});

  @override
  State<RobotOverview> createState() => _RobotOverviewState();
}

class _RobotOverviewState extends State<RobotOverview> {
  static String imageStr = "waiting for image";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overview Picture"),
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        Center(child: Text(imageStr)),
      ],),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Previous",
            icon: Icon(Icons.arrow_left_outlined)
          ),
          BottomNavigationBarItem(
            label: "Take Photo/Screenshot",
            icon: Icon(Icons.camera)
          ),
          BottomNavigationBarItem(
            label: "Next",
            icon: Icon(Icons.arrow_right_outlined)
          )
        ],
         onTap: (int index){
            if (index == 0){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext){
                    return const FirstPage();
                  }));
            }
            if (index == 1){
              setState((){
                imageStr = "button pressed";
              });

            }
            if (index == 2){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext){
                    return const LeftReduction();
                  }));
            }
         },
      ),
    );
  }
}

class LeftReduction extends StatefulWidget {
   const LeftReduction({super.key});

  @override
  State<LeftReduction> createState() => _LeftReduction();
}

class _LeftReduction extends State<LeftReduction> {
  static String imageStr = "waiting for image";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Left Reduction"),
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        Center(child: Text(imageStr)),
      ],),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Previous",
            icon: Icon(Icons.arrow_left_outlined)
          ),
          BottomNavigationBarItem(
            label: "Take Photo/Screenshot",
            icon: Icon(Icons.camera)
          ),
          BottomNavigationBarItem(
            label: "Next",
            icon: Icon(Icons.arrow_right_outlined)
          )
        ],
         onTap: (int index){
            if (index == 0){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext){
                    return const RobotOverview();
                  }));
            }
            if (index == 1){
              setState((){
                imageStr = "button pressed";
              });

            }
            if (index == 2){

            }
         },
      ),
    );
  }
}
