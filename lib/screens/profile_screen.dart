import 'package:flutter/material.dart';
import 'package:gold_reserver/screens/edit_profile_screen.dart/edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).pushNamed(
                EditProfileScreen.routeName,
              );
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/profile_icon.png'),
              ),
              title: const Text('Nahid Hasan Noyon'),
              subtitle: const Text('+8801627465928'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              child: const ListTile(
                title: Text('Change Password'),
                subtitle: Text('It will change your password'),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/set_password');
              },
            ),
          ],
        ),
      ),
    );
  }
}
