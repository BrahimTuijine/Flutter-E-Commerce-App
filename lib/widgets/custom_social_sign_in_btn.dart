import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSocialSignInBtn extends StatelessWidget {
  final String imagePath;
  final String text;
  final GestureTapCallback ontab;

  const CustomSocialSignInBtn({
    Key? key,
    required this.imagePath,
    required this.text, required this.ontab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
        height: Get.width * .3 / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.grey[100],
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Image(
                height: Get.height * .1,
                width: Get.width * .1,
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}
