import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';
import 'package:ppkd_batch_3/Day_14/model/produk_model.dart';

class Day14List extends StatefulWidget {
  const Day14List({super.key});

  @override
  State<Day14List> createState() => _Day14ListState();
}

class _Day14ListState extends State<Day14List> {
  final List<String> namaBuah = ["Apel", "Nanas", "Anggur"];

  final List<Map<String, dynamic>> produk = [
    {"nama": "Baju", "price": 50000, "warna": Colors.blue},
    {"nama": "Celana", "price": 60000, "warna": Colors.red},
    {"nama": "Topi", "price": 70000, "warna": Colors.yellow},
    {"nama": "Sepatu", "price": 80000, "warna": Colors.green},
  ];

  // ini ambil dari model di file lain
  final List<ProdukModel> produkModel = [
    ProdukModel(nama: "Baju", price: 50000, warna: Colors.blue),
    ProdukModel(nama: "Celana", price: 60000, warna: Colors.red),
    ProdukModel(nama: "Topi", price: 70000, warna: Colors.yellow),
    ProdukModel(nama: "Sepatu", price: 80000, warna: Colors.indigoAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 14 List"),
        backgroundColor: Colors.blue,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // List String
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: namaBuah.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(namaBuah[index]),
                  leading: CircleAvatar(child: Text("${index + 1}")),
                );
              },
            ),
            const Divider(),

            // List Map
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: produk.length,
              itemBuilder: (BuildContext context, int index) {
                final dataProduk = produk[index];
                return ListTile(
                  title: Text(dataProduk["nama"]),
                  subtitle: Text("Rp ${dataProduk["price"]}"),
                  trailing: CircleAvatar(backgroundColor: dataProduk["warna"]),
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text("${index + 1}"),
                  ),
                );
              },
            ),
            const Divider(),

            // List Model
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: produkModel.length,
              itemBuilder: (BuildContext context, int index) {
                final dataProdukModel = produkModel[index];
                return ListTile(
                  title: Text(dataProdukModel.nama),
                  subtitle: Text("Rp ${dataProdukModel.price}"),
                  trailing: CircleAvatar(
                    backgroundColor: dataProdukModel.warna,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text("${index + 1}"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
