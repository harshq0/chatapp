import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/text_field.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailContoller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController reEnterPassword = TextEditingController();
  final void Function()? onTap;
  RegisterPage({
    super.key,
    required this.onTap,
  });

  //method to register
  void register(BuildContext context) {
    //get auth service
    final auth = AuthService();

    if (passwordController.text == reEnterPassword.text) {
      try {
        auth.signUpWithEmailPassword(
          emailContoller.text,
          passwordController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    // if password don't match show an error
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Password doesn't match!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 30,
            ),

            //welcome back!
            Text(
              "Let's create your own account",
              style: GoogleFonts.outfit(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //email TextField
            MyTextField(
              hintText: 'Email',
              prefixIcon: const Icon(Icons.person),
              obscureText: false,
              controller: emailContoller,
            ),

            const SizedBox(
              height: 20,
            ),

            //PW Textfield
            MyTextField(
              hintText: 'Password',
              prefixIcon: const Icon(Icons.lock),
              obscureText: true,
              controller: passwordController,
            ),

            const SizedBox(
              height: 20,
            ),

            //re-enter Textfield
            MyTextField(
              hintText: 're-enter password',
              prefixIcon: const Icon(Icons.lock),
              obscureText: true,
              controller: reEnterPassword,
            ),

            const SizedBox(
              height: 20,
            ),

            //RegisterButton
            MyButton(
              text: 'Register ',
              onTap: () => register(context),
            ),

            const SizedBox(
              height: 20,
            ),

            //register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account ?',
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    ' Login now',
                    style: GoogleFonts.outfit(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
