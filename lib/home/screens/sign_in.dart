import 'package:flutter/material.dart';

import '../../core/constant/constants.dart';
import '../../core/geniric_widjet/custom_button.dart';
import '../../core/geniric_widjet/custom_text_form_faild.dart';
import 'main_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                'Enter Your Email:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              CustomTextFormFaild(
                hintText: "Enter Your Email",
                controller: emailController,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter Your Password:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              CustomTextFormFaild(
                hintText: "Enter Password",
                controller: PasswordController,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CustomButton(
                  text: "Continue",
                  VoidCallback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
