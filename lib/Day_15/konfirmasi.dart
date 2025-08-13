// HALAMAN KONFIRMASI

import 'package:flutter/material.dart';

class Confirm extends StatelessWidget {
  final String name;
  final String city;

  const Confirm({super.key, required this.name, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Center(
        child: Text(
          "Terima kasih, $name dari kota $city telah mendaftar😍😘",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lobster',
          ),
        ),
      ),
    );
  }
}
