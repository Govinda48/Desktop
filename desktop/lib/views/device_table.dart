import 'package:desktop/views/custome_appbar.dart';
import 'package:flutter/material.dart';

class DeviceTable extends StatelessWidget {
  const DeviceTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildDeviceTable(context),
          ],
        ),
      ),
    );
  }

  Widget buildDeviceTable(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Table(
        border: TableBorder.all(color: Colors.black, width: 1),
        defaultColumnWidth: const IntrinsicColumnWidth(),
        children: [
          // Header Row
          TableRow(
            decoration: const BoxDecoration(color: Colors.blue),
            children: [
              tableHeader('Field', Colors.white),
              tableHeader('Mandatory', Colors.white),
              tableHeader('Description', Colors.white),
              tableHeader('Default Value', Colors.white),
              tableHeader('Mass Update Applicable', Colors.white),
              tableHeader('Not Ready for Users', Colors.white),
            ],
          ),
          // Data Rows
          tableRow(
              'model_type',
              'Yes',
              'Attendance (ATT), Access Control (DAC), Canteen (CMS)',
              'ATT',
              'Yes',
              ''),
          tableRow('device_id', 'Yes',
              '(short code for Device Name) max Length 8 chars', '', 'No', ''),
          tableRow('device_name', 'Yes', '', '', 'No', ''),
          tableRow('device_group', 'Yes', '', '', 'No', ''),
          tableRow('device_location', 'Yes', '', '', 'Yes', ''),
          tableRow(
              'repeat_punch_time', 'Yes', '1 to 255 (mins)', '1min', 'Yes', ''),
          tableRow('repeat_punch_msg', 'Yes', 'max 20 chars', 'Duplicate Punch',
              'Yes', ''),
          tableRow('left_status', 'Yes', 'max 5 chars', 'IN', 'Yes', ''),
          tableRow('right_status', 'Yes', 'max 5 chars', 'OUT', 'Yes', ''),
          tableRow('left_code', 'Yes', 'max 3 chars', 'I', 'Yes', ''),
          tableRow('right_code', 'Yes', 'max 3 chars', 'O', 'Yes', ''),
          tableRow('card_num_zero_mask_digit', 'Yes', 'Number 0 to 4', '0',
              'Yes', ''),
          tableRow('user_id_length', 'Yes',
              'same as User ID length in user master', '', 'Yes', ''),
          tableRow('unregistered_msg', 'Yes', 'max 20 chars',
              'Unregistered User', 'Yes', ''),
          tableRow(
              'success_audio_beep', 'Yes', 'number 0 to 3', '1', 'Yes', ''),
          // Continuation of Data Rows
          tableRow(
              'failure_audio_beep', 'Yes', 'number 0 to 3', '2', 'Yes', ''),
          tableRow(
              'Configuration Settings',
              'Yes',
              '(IP Address, MAC Address, Server IP, Credentials etc)',
              '',
              '',
              'When not configured'),
          tableRow(
              'Authenticate_User_By',
              'Yes',
              'RFID (Enable/Disable), Fingerprint (Enable/Disable), Face (Enable/Disable)',
              'All three enabled',
              'Yes',
              'When all three are disabled'),
          tableRow(
              'device_Status', 'Yes', 'Active/Inactive', 'Inactive', 'Yes', ''),
          tableRow('Device_sts_Since', 'Yes', 'Date', '', 'Yes', ''),
          tableRow('Delete', 'Yes', '', '', '', ''),
          tableRow('Deleted_On', 'Yes', 'Date', '', '', ''),
        ],
      ),
    );
  }

  // Helper function for header cell
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

  // Helper function for data cell
  Widget tableData(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14),
        textAlign: TextAlign.left,
      ),
    );
  }

  // Helper function to create a TableRow for each data row
  TableRow tableRow(String field, String mandatory, String description,
      String defaultValue, String massUpdate, String notReady) {
    return TableRow(
      decoration: BoxDecoration(color: Colors.grey[100]),
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
}
