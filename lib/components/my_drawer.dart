import 'package:chat_app/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.message,
              size: 64,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          //home
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              title: Text(
                'H O M E',
                style: GoogleFonts.outfit(),
              ),
              leading: const Icon(Icons.home),
              onTap: () {
                // navigator pop
                Navigator.pop(context);
              },
            ),
          ),

          //logout
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 30),
            child: ListTile(
              title: Text(
                'L O G O U T',
                style: GoogleFonts.outfit(),
              ),
              leading: const Icon(Icons.logout_sharp),
              onTap: logout,
            ),
          ),
        ],
      ),
    );
  }
}
