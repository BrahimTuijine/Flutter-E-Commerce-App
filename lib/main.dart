
import 'package:e_comm_app/theme/theme.dart';
import 'package:e_comm_app/views/auth/login.dart';
import 'package:e_comm_app/views/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

 MyApp() => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData(),
      defaultTransition: Transition.fade,
      home: const Login(),
      routes: {
        "signUp" :  (context) => const Register(),
        "signIn" :  (context) => const Login(),
      },
    );
