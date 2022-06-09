import 'package:e_comm_app/const.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomButtonView extends GetView {
  final double height;
  final double width;
  final String text;

  const CustomButtonView(
      {Key? key, required this.height, required this.width, required this.text})
      : super(key: key);
      
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Constants.primaryColor),
        ),
        onPressed: () {},
        child: Text(
          text,
        ),
      ),
    );
  }
}
