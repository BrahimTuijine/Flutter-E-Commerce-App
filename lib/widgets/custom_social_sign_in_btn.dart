import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSocialSignInBtn extends StatelessWidget {
  const CustomSocialSignInBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: Get.width * .3 / 2,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image(
              height: Get.height * .1,
              width: Get.width * .1,
              image: const AssetImage(
                'assets/images/facebook.png',
              ),
            ),
            const Text('Sign In With Facebook ')
          ],
        ),
      ),
    );
  }
}