import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/button_widget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
      body: Stack(children: [
        Positioned(
          top: 0,
          child: Image.asset(
            "assets/img/hotel.jpg",
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                height: MediaQuery.of(context).size.height * 0.67,
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
                    Text(
                      "Email address",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor),
                    ),
                    Spaces.spaceH8,
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 40,
                      child: TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your email address',
                              prefix: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Icon(Icons.email_rounded),
                              ))),
                    ),
                    Spaces.spaceH24,
                    Text(
                      "passowrd",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor),
                    ),
                    Spaces.spaceH8,
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 40,
                      child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your password',
                              prefix: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Icon(Icons.lock_outline),
                              ))),
                    ),
                    const Spacer(),
                    CustomButton(
                        buttonTitle: 'Log In',
                        buttonWidth: MediaQuery.of(context).size.width - 50,
                        onPressed: () async {
                          if (emailController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                            // Signing in ...
                            await supabase.auth.signInWithPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                            print("yesss");
                          }
                        })
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}