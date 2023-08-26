import 'package:flutter/material.dart';
import 'package:wm_hotel/screens/auth/sign_up_screen.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wm_hotel/widget/login_screen_widgets/cutom_field.dart';
import 'package:wm_hotel/widget/login_screen_widgets/login_button.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
      resizeToAvoidBottomInset: false,
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
                      "Welcome Back",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor),
                    ),
                  ),
                  Spaces.spaceH32,
                  Spaces.spaceH8,
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
                  Spaces.spaceH16,
                  InkWell(
                    child: Center(
                      child: Text(
                        "Create a new account",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    onTap: () {
                      context.push(screen: SignUpScreen());
                    },
                  ),
                  const Spacer(),
                  LoginButton(
                      emailController: emailController,
                      passwordController: passwordController,
                      supabase: supabase),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
