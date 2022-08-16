import 'package:get/get.dart';
class GoCont extends GetxController{
  int cont=0;
  void incrmant(){
    cont++;
    update();
  }
  void mun(){
    cont--;
    update();
  }
}