import 'package:final_project_frontend/components/my_button.dart';
import 'package:final_project_frontend/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //sign user methodu
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.food_bank_rounded,
                size: 120,
                color: Color.fromARGB(255, 214, 162, 7),
              ),
              const SizedBox(height: 50),
              //welcome
              const Text(
                'Hoşgeldiniz, Lütfen Giriş yapın.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 214, 162, 7),
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              //username textfield
              MyTextfield(
                controller: usernameController,
                hintText: 'Kullanıcı Adı',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              //password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Şifre',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              //forgot password
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Şifremi Unuttum',
                      style: TextStyle(color: Color.fromARGB(255, 214, 162, 7)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              //login button
              myButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),
              //kayıt
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Üye değil misiniz? Hemen',
                    style: TextStyle(color: Color.fromARGB(255, 214, 162, 7)),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Kayıt Olun!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 214, 117, 7),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
