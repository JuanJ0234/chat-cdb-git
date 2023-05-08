import 'package:chat_cdb/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:chat_cdb/src/pages/login/login_page.dart';
import 'package:chat_cdb/src/utils/my_colors.dart';
import 'package:get/get.dart';
import 'package:chat_cdb/src/pages/home/home_page.dart';

//User myUser = User.fromJson(GetStorage().read('user') ?? {});

void main() async{
  //await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat flutter',
      initialRoute: '/',
      //initialRoute: myUser.id != null ? '/home' : '/',
      getPages: [
        //GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/register', page: () => RegisterPage())
      ],

      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      navigatorKey: Get.key,
    );
  }
}
