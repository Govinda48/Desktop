import 'package:desktop/views/enrollscree.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  // Track the selected popup menu item
  String _selectedButtonTitle = '';
  int? _selectedButtonIndex;

  final List<Map<String, dynamic>> menuItems = [
    {
      'title': 'Role based Login',
      'icon': Icons.verified_user,
      'page': const RoleBasedLoginPage(), // Add the corresponding page here
    },
    {
      'title': 'User Enrollment',
      'icon': Icons.how_to_reg,
      'page': const EnrollmentScreen(), // Add the corresponding page here
    },
    {
      'title': 'Not Ready for Device',
      'icon': Icons.device_unknown,
      'page': const NotReadyDevicePage(), // Add the corresponding page here
    },
    {
      'title': 'Third Party Interface',
      'icon': Icons.integration_instructions,
      'page':
          const ThirdPartyInterfacePage(), // Add the corresponding page here
    },
    {
      'title': 'Device and Devices Groups',
      'icon': Icons.devices,
      'page': const DeviceGroupsPage(), // Add the corresponding page here
    },
    {
      'title': 'Not assigned to any Device Group',
      'icon': Icons.group_off,
      'page':
          const NotAssignedDeviceGroupPage(), // Add the corresponding page here
    },
    {
      'title': 'Sync server Data with Device',
      'icon': Icons.sync,
      'page': const SyncServerDataPage(), // Add the corresponding page here
    },
    {
      'title': 'Sync Device Logs',
      'icon': Icons.receipt_long,
      'page': const SyncDeviceLogsPage(), // Add the corresponding page here
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 151, 126, 194),
      title: const Text(
        'Dashboard - Maintenance Admin',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      centerTitle: true,
      actions: [
        // Popup menu with icons
        PopupMenuButton<int>(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onSelected: (int index) {
            setState(() {
              _selectedButtonIndex = index;
              _selectedButtonTitle = menuItems[index]['title'];

              // Navigate to the selected page
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => menuItems[index]['page']),
              );
            });
          },
          itemBuilder: (BuildContext context) {
            return List.generate(menuItems.length, (index) {
              return PopupMenuItem<int>(
                value: index,
                child: Row(
                  children: [
                    Icon(
                      menuItems[index]['icon'],
                      color: _selectedButtonIndex == index
                          ? Colors.green
                          : Colors.grey,
                    ),
                    const SizedBox(width: 8),
                    Text(menuItems[index]['title']),
                  ],
                ),
              );
            });
          },
        ),
      ],
    );
  }
}

// Example placeholder pages
class RoleBasedLoginPage extends StatelessWidget {
  const RoleBasedLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Role Based Login')),
      body: const Center(child: Text('Role Based Login Page')),
    );
  }
}

// Add more placeholder pages for the other menu items as needed...
class NotReadyDevicePage extends StatelessWidget {
  const NotReadyDevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Not Ready for Device')),
      body: const Center(child: Text('Not Ready for Device Page')),
    );
  }
}

class ThirdPartyInterfacePage extends StatelessWidget {
  const ThirdPartyInterfacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Party Interface')),
      body: const Center(child: Text('Third Party Interface Page')),
    );
  }
}

class DeviceGroupsPage extends StatelessWidget {
  const DeviceGroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device and Devices Groups')),
      body: const Center(child: Text('Device and Devices Groups Page')),
    );
  }
}

class NotAssignedDeviceGroupPage extends StatelessWidget {
  const NotAssignedDeviceGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Not assigned to any Device Group')),
      body: const Center(child: Text('Not assigned to any Device Group Page')),
    );
  }
}

class SyncServerDataPage extends StatelessWidget {
  const SyncServerDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sync server Data with Device')),
      body: const Center(child: Text('Sync server Data with Device Page')),
    );
  }
}

class SyncDeviceLogsPage extends StatelessWidget {
  const SyncDeviceLogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sync Device Logs')),
      body: const Center(child: Text('Sync Device Logs Page')),
    );
  }
}
