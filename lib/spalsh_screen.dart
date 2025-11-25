import 'package:chat_app/home_screen.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat_bubble_rounded, size: 110),
            Text(
              'Welcome To Chat App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              icon: Icon(Icons.arrow_forward, size: 50, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
