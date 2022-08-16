import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/stop.dart';
import 'view/go.dart';
import 'view/rady.dart';
void main() {
  runApp(const GetMaterialApp(
    home: Home(),
    showSemanticsDebugger: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx"),),
      body: Column(children: [
        MaterialButton(onPressed: (){Get.off(Stop());},
        color: Colors.red,child: Text("Stop"),),


        MaterialButton(onPressed: (){Get.to(Rady());},

        color: Colors.yellow,child: Text("Rady"),),
        MaterialButton(onPressed: (){Get.to(Go());},
        color: Colors.green,child: Text("Gooooooooooo"),),

      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,),

    );
  }
}

