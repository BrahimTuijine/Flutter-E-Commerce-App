import 'package:e_comm_app/const.dart';
import 'package:e_comm_app/widgets/custom_button_view.dart';
import 'package:e_comm_app/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: (() => FocusScope.of(context).unfocus()),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Get.width * .1 / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: Get.width * .2,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.width * .1,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      CustumFormField(
                        hint: 'brahim tuijine',
                        keyBordType: TextInputType.name,
                        labelText: 'Name',
                        onSave: (value) {},
                        validator: (value) {
                          return null;
                        },
                      ),
                      SizedBox(
                        height: Get.height * .2 / 4,
                      ),
                      CustumFormField(
                        hint: 'brahimTuijine@gmail.com',
                        keyBordType: TextInputType.emailAddress,
                        labelText: 'Email',
                        onSave: (value) {},
                        validator: (value) {
                          return null;
                        },
                      ),
                      SizedBox(
                        height: Get.height * .2 / 4,
                      ),
                      CustumFormField(
                        hint: '* * * * * * ',
                        keyBordType: TextInputType.visiblePassword,
                        labelText: 'Password',
                        onSave: (value) {},
                        validator: (value) {
                          return null;
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: Get.height * .2 / 4,
                        ),
                        child: CustomButtonView(
                          height: Get.width * .3 / 2,
                          width: double.infinity,
                          text: "REGISTER",
                          onpress: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
