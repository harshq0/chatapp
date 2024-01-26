import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  //email and pw controller

  final TextEditingController emailContoller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final void Function()? onTap;
  LoginPage({
    super.key,
    required this.onTap,
  });

  //method to login
  void login(BuildContext context) async {
    //auth service
    final authService = AuthService();

    //login
    try {
      await authService.signInWithEmailAndPasword(
          emailContoller.text, passwordController.text);
    }

    //error
    catch (e) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
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
              'Welcome You back!',
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

            //loginButton
            MyButton(
              text: 'Login',
              onTap: () => login(context),
            ),

            const SizedBox(
              height: 20,
            ),

            //register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Not a memeber ?',
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    ' Register now',
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
