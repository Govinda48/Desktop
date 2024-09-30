import 'package:desktop/views/custome_appbar.dart';
import 'package:flutter/material.dart';

class UserTable extends StatelessWidget {
  const UserTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Allow vertical scrolling
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Allow horizontal scrolling
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Table(
                border: TableBorder.all(color: Colors.black, width: 1),
                defaultColumnWidth: const IntrinsicColumnWidth(),
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.blue[100]),
                    children: [
                      tableHeader('Field'),
                      tableHeader('Mandatory'),
                      tableHeader('Description'),
                      tableHeader('Default Value'),
                      tableHeader('Mass Update Applicable'),
                      tableHeader('Not Ready for Device'),
                    ],
                  ),
                  tableRow('emp_id', 'Yes', 'Max 16 char\nMust be unique', '',
                      'No', ''),
                  tableRow('emp_name', 'Yes', 'Max 30 char', '', 'No', ''),
                  tableRow(
                      'User_photo', '', 'Photo file emp_id.jpg', '', 'No', ''),
                  tableRow('Email', '', '', '', 'No', ''),
                  tableRow('Contact Number', '', '', '', 'No', ''),
                  tableRow('Location', 'Yes', '', '', 'Yes', ''),
                  tableRow('Category', 'No', '', '', 'Yes', ''),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.orange[100]),
                    children: [
                      tableData('device_group'),
                      tableData(''),
                      tableData(
                          'Show the device groups applicable to the selected location'),
                      tableData(''),
                      tableData('No'),
                      tableData('Yes'),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.orange[100]),
                    children: [
                      tableData('User_access'),
                      tableData(''),
                      tableData('Same location or multi location'),
                      tableData(''),
                      tableData('No'),
                      tableData(''),
                    ],
                  ),
                  tableRow('validity_date', '',
                      'Default valid up to date of contract', '', 'Yes', ''),
                  // Additional rows...
                  tableRow('Employee_Status', 'Yes', 'Active/Inactive',
                      'Active', 'Yes', ''),
                  tableRow('Delete', '', '', '', 'Yes', ''),
                  tableRow('Deleted_On', '', 'Date', '', '', ''),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.orange[100]),
                    children: [
                      tableData('RFID_Code'),
                      tableData(''),
                      tableData('RFID Card Code'),
                      tableData(''),
                      tableData(''),
                      tableData('Yes'),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.orange[100]),
                    children: [
                      tableData('Fingerprint_Template'),
                      tableData(''),
                      tableData('Fingerprint Template'),
                      tableData(''),
                      tableData(''),
                      tableData('Yes'),
                    ],
                  ),
                  // Add more rows as needed
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TableRow tableRow(String field, String mandatory, String description,
      String defaultValue, String massUpdate, String notReady) {
    return TableRow(
      children: [
        tableData(field),
        tableData(mandatory),
        tableData(description),
        tableData(defaultValue),
        tableData(massUpdate),
        tableData(notReady),
      ],
    );
  }

  Widget tableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget tableData(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
