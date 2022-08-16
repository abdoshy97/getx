import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controlar/gocont.dart';
class Go extends StatefulWidget {
  const Go({Key? key}) : super(key: key);

  @override
  State<Go> createState() => _GoState();
}

class _GoState extends State<Go> {
  int contenar=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(),
      body: Container(child: Center(
        child: GetBuilder <GoCont>(init: GoCont(),builder:(controller)=> Column(
          children: [


            IconButton(onPressed: (){
              controller.incrmant();
            }, icon: Icon(Icons.add)),
            Text("${controller.cont}"),
            IconButton(onPressed: (){
              controller.mun();
            }, icon: Icon(Icons.delete_outlined)),
          ],
        ),)
      ),),
    );
  }
}

