import 'package:desktop/views/custome_appbar.dart';
import 'package:flutter/material.dart';

class DataTransferTable extends StatelessWidget {
  const DataTransferTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.black, width: 1),
          defaultColumnWidth: const IntrinsicColumnWidth(),
          children: [
            // Header Row
            TableRow(
              decoration: BoxDecoration(color: Colors.black),
              children: [
                tableHeader('SrNo', Colors.white),
                tableHeader('Direction', Colors.white),
                tableHeader('Data', Colors.white),
              ],
            ),
            // First Data Row
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[300]),
              children: [
                tableData('1'),
                tableData('S-D'),
                tableData(
                  'Send user information such as user_id, emp_id, emp_name, user_type, device_group, date_of_birth, validity_date and RFID Code, Fingerprint Templates and Face Templates',
                ),
              ],
            ),
            // Second Data Row
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[100]),
              children: [
                tableData('2'),
                tableData('S-D'),
                tableData(
                  'Whenever user data is changed, update the same on the device',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tableHeader(String text, Color textColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: textColor,
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
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.left,
      ),
    );
  }
}
