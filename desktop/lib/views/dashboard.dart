import 'package:desktop/views/custome_appbar.dart';
import 'package:desktop/views/datatranspher.dart';
import 'package:desktop/views/device_table.dart';
import 'package:desktop/views/user.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // Track the selected button index and the button title
  String _selectedButtonTitle = 'Locations'; // Set default title
  int _selectedButtonIndex = 0; // Set default index to 0 (Locations)

  @override
  void initState() {
    super.initState();
    // Initialize selected button index and title
    _selectedButtonIndex = 0; // Set the default selected button
    _selectedButtonTitle = 'Locations'; // Set default title
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: dashboardButton(
                      _selectedButtonIndex,
                      _selectedButtonTitle,
                      Icons.check,
                      Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    dashboardButton(
                      0,
                      'Locations',
                      Icons.location_on,
                      Colors.white,
                    ),
                    dashboardButton(1, 'Users', Icons.person, Colors.white),
                    dashboardButton(2, 'Not Ready for Device',
                        Icons.device_unknown, Colors.white),
                    dashboardButton(
                        3, 'Multi Location Users', Icons.group, Colors.white),
                    dashboardButton(7, 'Online', Icons.wifi, Colors.white),
                    dashboardButton(8, 'Offline', Icons.wifi_off, Colors.white),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    dashboardButton(4, 'Devices', Icons.devices, Colors.white),
                    dashboardButton(5, 'Not assigned to any Device Group',
                        Icons.group_work, Colors.white),
                    dashboardButton(6, 'Not Ready to Accept Users', Icons.block,
                        Colors.white),
                    dashboardButton(
                        9, 'Data Transfer Status', Icons.sync, Colors.white),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboardButton(int index, String title, IconData icon, Color color) {
    Color buttonColor = (_selectedButtonIndex == index) ? Colors.green : color;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size(160, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
      ),
      onPressed: () {
        setState(() {
          _selectedButtonIndex = index;
          _selectedButtonTitle = title;
        });

        // Navigate to different pages based on the button index
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserTable()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserTable()),
            );
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DeviceTable()),
            );
            break;
          case 9:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DataTransferTable()),
            );
            break;
          // Add cases for other buttons as needed
          default:
            break;
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
