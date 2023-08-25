import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/button_widget.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                        "Create New Account",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor),
                      ),
                    ),
                    Spaces.spaceH32,
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor),
                    ),
                    Spaces.spaceH8,
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 40,
                      child: const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your name',
                              prefix: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Icon(Icons.email_rounded),
                              ))),
                    ),
                    Spaces.spaceH24,
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
                      child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your password',
                              prefix: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Icon(Icons.lock_outline),
                              ))),
                    ),
                    Spaces.spaceH24,
                    Text(
                      "Confirm password",
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
                              hintText: 'Reenter your passowrd',
                              prefix: Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Icon(Icons.lock_outline),
                              ))),
                    ),
                    Spaces.spaceH32,
                    CustomButton(
                      buttonTitle: 'Sign up',
                      buttonWidth: MediaQuery.of(context).size.width - 50,
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}