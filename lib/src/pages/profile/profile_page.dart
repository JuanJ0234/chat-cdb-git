import 'package:chat_cdb/src/pages/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {

  ProfileController con = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => con.signOut(),
        child: Icon(Icons.power_settings_new),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          children: [
            circleImageUser(),
            SizedBox(height: 20,),
            userInfo(
                'Nombre del usuario',
                'Norberto Colorado',
                Icons.person
            ),
            userInfo(
                'Email',
                'norbertocolorado@gmail.com',
                Icons.email
            ),
            userInfo(
                'Teléfono',
                '7777-7777o',
                Icons.phone
            ),
          ],
        ),
      )
    );
  }

  Widget userInfo(String title, String subtitle, IconData iconData) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 30, right: 30),
      child: ListTile(
        title: Text(title),
        //subtitle: Text('${con.user.name ?? ''} ${con.user.lastname ?? ''}'),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
      ),
    );
  }

  Widget circleImageUser(){
  return Center(
    child: Container(
      margin: EdgeInsets.only(top: 30),
      width: 200,
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipOval(
          child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              placeholder: 'assets/img/logo.png',
              image: 'https://pbs.twimg.com/profile_images/1623036534160035872/5mXtSOFO_400x400.jpg'
          ),
        ),
      ),
    ),
  );
  }

}
