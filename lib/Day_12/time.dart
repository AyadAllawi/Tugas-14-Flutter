import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  String selectedPage = '';
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  TimeOfDay time = TimeOfDay.now();

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      time = newTime; // update waktu saat user pilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Page")),
      drawer: MyDrawer(),

      body: Padding(
        padding: EdgeInsetsGeometry.all(100),
        child: Column(
          children: [
            Text("Set Reminder"),
            ElevatedButton(
              child: const Text("Select Reminder Time"),
              onPressed: () async {
                final TimeOfDay? pickerDate = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickerDate != null) {
                  setState(() {});
                  selectedTime = pickerDate;
                }
              },
            ),
            Text(
              selectedTime == null
                  ? "select the hour"
                  : "Reminder set at: ${selectedTime!.format(context)}",
            ),

            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       showPicker(
            //         context: context,
            //         value: TimeOfDay(hour: 7, minute: 0),
            //         sunrise: TimeOfDay(hour: 6, minute: 0), // optional
            //         sunset: TimeOfDay(hour: 18, minute: 0), // optional
            //         duskSpanInMinutes: 120, // optional
            //         onChange: onTimeChanged,
            //       ),
            //     );
            //   },
            //   child: Text(
            //     "Open time picker",
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
