import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';

class Tukar extends StatefulWidget {
  const Tukar({super.key});

  @override
  State<Tukar> createState() => _TukarState();
}

class _TukarState extends State<Tukar> {
  String selectedPage = '';
  bool isCheckSwitch = false;
  String? dropdownSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch")),

      drawer: MyDrawer(),

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
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),

            Text(
              "Aktifkan Mode Gelap",
              style: TextStyle(
                color: isCheckSwitch ? Colors.white : Colors.black,
              ),
            ),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   "Data",
                    //   style: TextStyle(
                    //     color: isCheckSwitch ? Colors.white : Colors.black,
                    //   ),
                    // ),
                    Switch(
                      activeColor: const Color.fromARGB(255, 255, 255, 255),
                      value: isCheckSwitch,
                      onChanged: (value) {
                        setState(() {
                          isCheckSwitch = value;
                        });
                      },
                    ),
                    Text(
                      isCheckSwitch ? "Mode Gelap Aktif" : "Mode Terang Aktif",
                      style: TextStyle(
                        color: isCheckSwitch ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
