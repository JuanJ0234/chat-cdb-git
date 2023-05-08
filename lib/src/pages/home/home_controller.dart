import 'package:get/get.dart';
//f a l t a - package de get_storage

class HomeController extends GetxController {

  //User user = User.fromJson(GetStorage().read('user') ?? {});

  var tabIndex = 0.obs;

  HomeController(){
    //print('USUARIO DE SESIÓN: ${user.toJson()}')
  }

  void changeTabIndex(int index){
  tabIndex.value = index;
  }

}
