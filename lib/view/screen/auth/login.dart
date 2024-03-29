 import 'package:e_commereceapp/controller/auth/login_controller.dart';
import 'package:e_commereceapp/core/class/constants/color.dart';
import 'package:e_commereceapp/view/widget/auth/custombuttonauth.dart';
import 'package:e_commereceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commereceapp/view/widget/auth/customtextformauth.dart';
import 'package:e_commereceapp/view/widget/auth/customtexttitleauth.dart';
import 'package:e_commereceapp/view/widget/auth/logoauth.dart';
import 'package:e_commereceapp/view/widget/auth/textsignup.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class Login extends StatelessWidget {
// GetView<LoginController>{
 
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
     LoginControllerImpl controller=Get.put(LoginControllerImpl());
return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20) , 
          const CustomTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          const CustonTextFormAuth(
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          const CustonTextFormAuth(
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          InkWell(
            onTap: () {
              controller.goToForgetPassword();
            },
            child: const Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
          ),
         CustomButtomAuth(text: "Sign In", onPressed: () {}),
          const SizedBox(height: 40),
          CustomTextSignUpOrSignIn(
            textone: "Don't have an account ? ",
            texttwo: "SignUp",
            onTap: () {
              controller.goToSignUP();
            },
          )
        ]),
      ),
    );
  }
}