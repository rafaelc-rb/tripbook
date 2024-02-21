import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
          child: Column(
        children: [
          Icon(
            Icons.account_circle,
            size: 150.0,
          ),
        ],
      )),
    );
  }
}
