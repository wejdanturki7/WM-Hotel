import 'package:flutter/material.dart';
import 'package:wm_hotel/screens/auth/log_in_screen.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/button_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wm_hotel/widget/login_screen_widgets/cutom_field.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
              color: AppColors.whiteColor,
              onPressed: () {
                context.pop();
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: AppColors.whiteColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor),
                    ),
                  ),
                  Spaces.spaceH32,
                  CustomField(
                    controller: nameController,
                    fieldTitel: 'Name',
                    hintText: 'Enter your name',
                    scureText: false,
                  ),
                  Spaces.spaceH24,
                  CustomField(
                    controller: emailController,
                    fieldTitel: 'Email Address',
                    hintText: 'Enter your email',
                    scureText: false,
                    icon: Icons.email_outlined,
                  ),
                  Spaces.spaceH24,
                  CustomField(
                    controller: passwordController,
                    fieldTitel: 'Password',
                    hintText: 'Enter your password',
                    scureText: true,
                    icon: Icons.lock_outline,
                  ),
                  Spaces.spaceH24,
                  CustomField(
                    controller: confirmPasswordController,
                    fieldTitel: 'Confirm password',
                    hintText: 'Rewrite your password',
                    scureText: true,
                    icon: Icons.lock_outline,
                  ),
                  Spaces.spaceH32,
                  CustomButton(
                    buttonTitle: 'Sign up',
                    buttonWidth: MediaQuery.of(context).size.width - 50,
                    onPressed: () async {
                      if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        // Signing up ...
                        await supabase.auth.signUp(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        if (context.mounted) {
                          context.push(screen: LogInScreen());
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
