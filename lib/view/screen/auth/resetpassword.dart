import 'package:e_commereceapp/controller/auth/verifycode_controller.dart';
import 'package:e_commereceapp/core/class/constants/color.dart';
import 'package:e_commereceapp/view/widget/auth/custombuttonauth.dart';
import 'package:e_commereceapp/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commereceapp/view/widget/auth/customtextformauth.dart';
import 'package:e_commereceapp/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =Get.put(VerifyCodeControllerImp());
  return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "New Password"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Please Enter new Password"),
          const SizedBox(height: 15),
            CustonTextFormAuth(
           // mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),   CustonTextFormAuth(
            //mycontroller: controller.password,
            hinttext: "Re Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomButtomAuth(text: "save", onPressed: () {}),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}