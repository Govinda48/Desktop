import 'package:desktop/views/login_page.dart';
import 'package:flutter/material.dart';

class AdminLoginScreen extends StatelessWidget {
  const AdminLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row containing three buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Super-admin button
                buildGestureDetector(
                  context,
                  'Super-admin',
                  Icons.admin_panel_settings,
                ),
                const SizedBox(width: 20), // Space between buttons
                // Location-admin button
                buildGestureDetector(
                  context,
                  'Location-admin',
                  Icons.location_on,
                ),
                const SizedBox(width: 20), // Space between buttons
                // Maintenance Login button
                buildGestureDetector(
                  context,
                  'Maintenance Login',
                  Icons.build,
                ),
              ],
            ),
            const SizedBox(height: 20), // Space below the buttons
            // Container below the buttons
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 200,
            //       width: 200,
            //       decoration: BoxDecoration(
            //         image: const DecorationImage(
            //           image: NetworkImage(
            //             'https://your-image-url.com/image.jpg', // Replace with your image URL
            //           ),
            //           fit: BoxFit
            //               .cover, // Adjust the image to cover the container
            //         ),
            //         borderRadius: BorderRadius.circular(10), // Rounded corners
            //         border: Border.all(
            //             color: Colors.lightBlue, width: 2), // Border style
            //       ),
            //     ),
            //     const SizedBox(width: 20), // Space between buttons

            //     Container(
            //       height: 200,
            //       width: 200,
            //       decoration: BoxDecoration(
            //         image: const DecorationImage(
            //           image: NetworkImage(
            //             'https://your-image-url.com/image.jpg', // Replace with your image URL
            //           ),
            //           fit: BoxFit
            //               .cover, // Adjust the image to cover the container
            //         ),
            //         borderRadius: BorderRadius.circular(10), // Rounded corners
            //         border: Border.all(
            //             color: Colors.lightBlue, width: 2), // Border style
            //       ),
            //     ),
            //     const SizedBox(width: 20), // Space between buttons

            //     Container(
            //       height: 200,
            //       width: 200,
            //       decoration: BoxDecoration(
            //         image: const DecorationImage(
            //           image: NetworkImage(
            //             'https://your-image-url.com/image.jpg', // Replace with your image URL
            //           ),
            //           fit: BoxFit
            //               .cover, // Adjust the image to cover the container
            //         ),
            //         borderRadius: BorderRadius.circular(10), // Rounded corners
            //         border: Border.all(
            //             color: Colors.lightBlue, width: 2), // Border style
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildGestureDetector(
      BuildContext context, String title, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Navigate to the GlassLoginScreen or any other action you want
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GlassLoginScreen()),
        );
        print('$title button pressed'); // Placeholder for action
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.lightBlue, // Background color of the button
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Adjust width to fit content
          mainAxisAlignment: MainAxisAlignment.center, // Center content
          children: [
            Icon(icon, color: Colors.white), // Icon for the button
            const SizedBox(width: 10), // Space between icon and text
            Text(
              title,
              style: const TextStyle(
                color: Colors.white, // Text color
                fontSize: 18, // Font size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
