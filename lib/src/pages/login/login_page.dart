//import 'package:chat_cdb/src/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:chat_cdb/src/utils/my_colors.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {


  //LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  top: -70,
                  left: -100,
                  child: _circleLogin()
              ),
              Positioned(
                child: _textLogin(),
                top: 50,
                left: 10,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _imageBanner(context),
                    _textFieldEmail(),
                    _textFieldPassword(),
                    _buttonLogin(),
                    _textNoAccount()
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

  Widget _circleLogin() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70, vertical: 70),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.primaryColor
      ),
    );
  }

  Widget _textLogin() {
    return Text(
      'Login',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22
      ),
    );
  }

  //los elementos de la interfaz
  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        //controller: controller.emailController,
        decoration: InputDecoration(
            hintText: 'Correo Electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        //controller: controller.passwordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }

  Widget _imageBanner(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 100,
          bottom: MediaQuery.of(context).size.height * 0.2
      ),
      child: Image.asset(
        'assets/img/logo.png',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        onPressed: () => {},
        //onPressed: () => controller.login(),
        child: Text('INGRESAR'),
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.symmetric(vertical: 15)
        ),
      ),
    );
  }

  Widget _textNoAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(
              color: MyColors.negro
          ),
        ),
        SizedBox(width: 7,),
        GestureDetector(
          onTap: () {
            Get.toNamed('/register');
          },
          child: Text(
            'Registrate',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColor
            ),
          ),
        ),
      ],
    );
  }
}