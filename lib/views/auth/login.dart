import 'package:e_comm_app/const.dart';
import 'package:e_comm_app/widgets/custom_form_field.dart';
import 'package:e_comm_app/widgets/custom_social_sign_in_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Get.width * .1 / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Welcome ,',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed("signUp"),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Constants.primaryColor, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(color: Constants.grey),
                ),
                SizedBox(
                  height: Get.height * .1,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      const CustumFormField(
                        hint: 'brahimtuijine@gmail.com',
                        keyBordType: TextInputType.emailAddress,
                        labelText: 'E-mail',
                      ),
                      SizedBox(
                        height: Get.height * .2 / 4,
                      ),
                      const CustumFormField(
                        hint: '* * * * * *',
                        keyBordType: TextInputType.visiblePassword,
                        labelText: 'Password',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: Get.width * .3 / 2,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Constants.primaryColor),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "SIGN IN",
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: Get.height * .1 / 2),
                        child: const Text(
                          '-OR-',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const CustomSocialSignInBtn(), //rodha custom w a3mel l fields with cunstructor
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
