import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  String selectedPage = '';
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date")),
      drawer: const MyDrawer(),

      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Color.fromARGB(255, 114, 127, 138),
      //         ),
      //         child: Text(
      //           'Dashboard',
      //           style: TextStyle(color: Colors.white, fontSize: 24),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.check_box),
      //         title: const Text(
      //           'CheckBox',
      //           style: TextStyle(fontFamily: 'Poppins'),
      //         ),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Cekbox()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.brightness_6),
      //         title: const Text('Switch'),
      //         onTap: () {
      //           {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => const Tukar()),
      //             );
      //           }
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.arrow_drop_down),
      //         title: const Text('Dropdown'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Dorp()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.date_range),
      //         title: const Text('Date'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Date()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.punch_clock),
      //         title: const Text('Time'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Time()),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(100),
        child: Column(
          children: [
            Text("Tanggal Lahir"),
            ElevatedButton(
              child: const Text("Pilih Tanggal Lahir"),
              onPressed: () async {
                final DateTime? pickerDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1920),
                  lastDate: DateTime(2100),
                );
                if (pickerDate != null) {
                  setState(() {
                    selectedDate = pickerDate;
                  });
                }
              },
            ),
            // Text(
            //   selectedDate == null
            //       ? "Pilih tanggal dulu"
            //       : DateFormat('EEEE', "id_ID").format(selectedDate!),
            // ),
            // Text(
            //   selectedDate == null
            //       ? "Pilih tanggal dulu"
            //       : DateFormat('yyyy').format(selectedDate!),
            // ),
            // Text(
            //   selectedDate == null
            //       ? "Pilih tanggal dulu"
            //       : DateFormat('MMM').format(selectedDate!),
            // ),
            Text(
              selectedDate == null
                  ? "Pilih tanggal dulu"
                  : DateFormat(
                      'EEEE, dd MMMM yyyy',
                      "id_ID",
                    ).format(selectedDate!),
            ),
          ],
        ),
      ),
    );
  }
}
