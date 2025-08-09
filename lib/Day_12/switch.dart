import 'package:flutter/material.dart';

class Tukar extends StatefulWidget {
  const Tukar({super.key});

  @override
  State<Tukar> createState() => _TukarState();
}

class _TukarState extends State<Tukar> {
  bool isCheckSwitch = false;
  String? dropdownSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch")),

      body: Container(
        color: isCheckSwitch ? Colors.black : Colors.white,
        child: Column(
          children: [
            Text(
              "Mode Gelap",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 20,
                color: isCheckSwitch ? Colors.black : Colors.white,
              ),
            ),

            Text("Aktifkan Mode Gelap"),
            Row(
              children: [
                Text("Data"), // ini contoh, sebelumnya "data" harusnya string
                Switch(
                  activeColor: const Color.fromARGB(255, 0, 0, 0),
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
          ],
        ),
      ),
    );
  }
}
