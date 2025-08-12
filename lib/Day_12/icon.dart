import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tugas12 extends StatefulWidget {
  const Tugas12({super.key});

  @override
  State<Tugas12> createState() => _Tugas12State();
}

class _Tugas12State extends State<Tugas12> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas FLutter 7")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Checkbox
            Text("data"),
            Text(
              "CheckBox",
              style: TextStyle(
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.red,
                  value: isCheck,
                  onChanged: (value) {
                    setState(() {
                      isCheck = value!;
                    });
                  },
                ),
                Text(isCheck ? "Setuju" : "Tidak Setuju"),
              ],
            ),

            // Switch
            const SizedBox(height: 16),
            Text("Switch"),
            Row(
              children: [
                Switch(
                  activeColor: Colors.blue,
                  value: isCheckSwitch,
                  onChanged: (value) {
                    setState(() {
                      isCheckSwitch = value;
                    });
                  },
                ),
                Text(isCheckSwitch ? "Hidup" : "Tidak Hidup"),
              ],
            ),

            // Dropdown
            const SizedBox(height: 16),
            Text("DropdownButton"),
            DropdownButton(
              value: dropdownSelect,
              hint: const Text("Pilih Warna"),
              items: ["Merah", "Hijau", "Biru"].map((String value) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  dropdownSelect = value;
                });
              },
            ),

            // Date Picker
            const SizedBox(height: 16),
            Text("Date Picker"),
            ElevatedButton(
              child: const Text("Pilih Tanggal"),
              onPressed: () async {
                final DateTime? pickerDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickerDate != null) {
                  setState(() {
                    selectedDate = pickerDate;
                  });
                }
              },
            ),
            Text(
              selectedDate == null
                  ? "Pilih tanggal dulu"
                  : DateFormat('EEEE', "id_ID").format(selectedDate!),
            ),
            Text(
              selectedDate == null
                  ? "Pilih tanggal dulu"
                  : DateFormat('yyyy').format(selectedDate!),
            ),
            Text(
              selectedDate == null
                  ? "Pilih tanggal dulu"
                  : DateFormat('MMM').format(selectedDate!),
            ),
            Text(
              selectedDate == null
                  ? "Pilih tanggal dulu"
                  : DateFormat(
                      'EEEE, dd MMMM yyyy',
                      "id_ID",
                    ).format(selectedDate!),
            ),

            // Time Picker
            const SizedBox(height: 24),
            Text("Time Picker"),
            ElevatedButton(
              child: const Text("Pilih Jam"),
              onPressed: () async {
                final TimeOfDay? pickerTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickerTime != null) {
                  setState(() {
                    selectedTime = pickerTime;
                  });
                }
              },
            ),
            Text(
              selectedTime == null
                  ? "Pilih jam dulu"
                  : "${selectedTime!.hour} : ${selectedTime!.minute}",
            ),
          ],
        ),
      ),
    );
  }
}
