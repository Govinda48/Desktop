import 'package:desktop/views/admin_login_screen.dart';
import 'package:desktop/views/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AdminLoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.black, // Background color for the splash screen
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Main Title Text
            Text(
              'SmartTime®',
              style: TextStyle(
                fontSize: 36, // Large text size
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            // Subtitle Text
            Text(
              'Device Management System',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 50),
            // Add a circular progress indicator for a loading effect
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
