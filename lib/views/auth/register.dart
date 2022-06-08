import 'package:e_comm_app/const.dart';
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
                      const CustumFormField(
                        hint: 'brahim tuijine',
                        keyBordType: TextInputType.name,
                        labelText: 'Name',
                      ),
                      SizedBox(
                        height: Get.height * .2 / 4,
                      ),
                      const CustumFormField(
                        hint: 'brahimTuijine@gmail.com',
                        keyBordType: TextInputType.emailAddress,
                        labelText: 'Email',
                      ),
                      SizedBox(
                        height: Get.height * .2 / 4,
                      ),
                      const CustumFormField(
                        hint: '* * * * * * ',
                        keyBordType: TextInputType.visiblePassword,
                        labelText: 'Password',
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: Get.height * .2 / 4,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: Get.width * .3 / 2,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Constants.primaryColor)),
                            onPressed: () {},
                            child: const Text(
                              "SIGN UP",
                            ),
                          ),
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
