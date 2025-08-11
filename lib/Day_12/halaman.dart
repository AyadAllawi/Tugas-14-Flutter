import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/checkbox.dart';

class Halaman extends StatefulWidget {
  const Halaman({super.key});

  @override
  State<Halaman> createState() => _HalamanState();
}

class _HalamanState extends State<Halaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboar")),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Cekbox()),
              );
            },
            child: const Text('Go to CheckBox', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
