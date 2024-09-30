import 'package:desktop/views/custome_appbar.dart';
import 'package:flutter/material.dart';

class EnrollmentScreen extends StatelessWidget {
  const EnrollmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center content horizontally
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Enrollment Options screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EnrollmentOptions(),
                    ),
                  );
                },
                child: const Text('Enroll'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Avoid duplicate for RFID, Finger, and Face',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Center text
              ),
              const SizedBox(height: 10),
              const Text(
                'Show No of Fingers registered: 0', // Initially zero
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center, // Center text
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EnrollmentOptions extends StatelessWidget {
  const EnrollmentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(), // Use the CustomAppBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Enrollment Method',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.rss_feed),
              title: const Text('Register - RFID'),
              onTap: () {
                // Handle RFID registration
              },
            ),
            ListTile(
              leading: const Icon(Icons.fingerprint),
              title: const Text('Register - Fingerprint'),
              onTap: () {
                // Handle Fingerprint registration
              },
            ),
            ListTile(
              leading: const Icon(Icons.face),
              title: const Text('Register - Face'),
              onTap: () {
                // Handle Face registration
              },
            ),
          ],
        ),
      ),
    );
  }
}
