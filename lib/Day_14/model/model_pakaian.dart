import 'package:flutter/material.dart';

class PakaianWanita {
  final String nama;
  final String price;
  final IconData icon;
  PakaianWanita({required this.nama, required this.price, required this.icon});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // 'nama'
    };
  }
}
