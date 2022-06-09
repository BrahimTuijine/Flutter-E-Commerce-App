// ignore_for_file: non_constant_identifier_names

import 'package:e_comm_app/theme/theme.dart';
import 'package:e_comm_app/views/auth/login.dart';
import 'package:e_comm_app/views/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

MyApp() => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData(),
      defaultTransition: Transition.fade,
      home: const Login(),
      routes: {
        "signUp": (context) => const Register(),
        "signIn": (context) => const Login(),
      },
    );
