import 'package:e_comm_app/const.dart';
import 'package:flutter/material.dart';

ThemeData appThemeData() => ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          
          borderSide: BorderSide(color: Constants.lightGreen),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Constants.lightGreen),
        ),
      ),
    );
