import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wm_hotel/screens/main_screen.dart';
import 'package:wm_hotel/widget/button_widget.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.supabase,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final SupabaseClient supabase;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
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
          if (context.mounted) {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
                (route) {
              return false;
            });
          }
        }
      },
    );
  }
}
