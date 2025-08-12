import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';

class Dorp extends StatefulWidget {
  const Dorp({super.key});

  @override
  State<Dorp> createState() => _DorpState();
}

class _DorpState extends State<Dorp> {
  String? kategoriDipilih;

  final List<String> kategori = ["Elektronik", "Pakaian", "Makanan", "Lainnya"];

  // Map kategori ke gambar asset
  final Map<String, String> kategoriGambar = {
    "Elektronik": "assets/images/foto/elektronik.jpg",
    "Pakaian": "assets/images/foto/pakaian.jpg",
    "Makanan": "assets/images/foto/makanan.jpg",
    "Lainnya": "assets/images/foto/inova.jpg",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dropdown")),

      drawer: MyDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Pilihan Barang:", style: TextStyle(fontSize: 20)),
            DropdownButton<String>(
              value: kategoriDipilih,
              hint: const Text("Pilih kategori"),
              isExpanded: true,
              items: kategori.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  kategoriDipilih = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            if (kategoriDipilih != null) ...[
              Text(
                "Anda memilih kategori: $kategoriDipilih",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Image.asset(
                kategoriGambar[kategoriDipilih]!,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
