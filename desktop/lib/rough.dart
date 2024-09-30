import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sagar Kumbhar Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blue.shade100,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://your-profile-picture-url.com',
                    ), // Add your image URL
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sagar Kumbhar',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            // About Section
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I am a passionate Flutter developer with experience in building cross-platform mobile applications. '
                    'I have worked on various projects, bringing ideas to life with efficient and responsive apps.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Skills Section
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- Flutter & Dart\n'
                    '- Firebase\n'
                    '- REST API Integration\n'
                    '- UI/UX Design\n'
                    '- State Management (GetX)',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Projects Section
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- Project 1: E-commerce App\n'
                    'A full-featured e-commerce application built using Flutter and Firebase.\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '- Project 2: Social Media App\n'
                    'A social media app with user authentication, profile creation, and real-time updates.\n',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Contact Section
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email: sagar.kumbhar@example.com\n'
                    'Phone: +91 1234567890',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
