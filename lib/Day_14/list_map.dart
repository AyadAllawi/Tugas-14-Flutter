import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';

class Kategori extends StatefulWidget {
  const Kategori({super.key});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  final List<Map<String, dynamic>> produk = [
    {"nama": "Blus", "price": "Rp1.000.000", "icon": Icons.checkroom},
    {"nama": "Kemeja", "price": "Rp1.500.000", "icon": Icons.business},
    {"nama": "Kaos", "price": "Rp900.000", "icon": Icons.check},
    {"nama": "Tank Top", "price": "Rp150.000", "icon": Icons.accessibility_new},
    {"nama": "Sweater", "price": "Rp195.000", "icon": Icons.waves},
    {"nama": "Rok", "price": "Rp250.000", "icon": Icons.shopping_bag},
    {"nama": "Celana", "price": "Rp135.000", "icon": Icons.shopping_cart},
    // {"nama": "Kemeja", "price": 60000, "warna": Colors.red},
    // {"nama": "Kaos", "price": 70000, "warna": Colors.yellow},
    // {"nama": "Tank Top", "price": 80000, "warna": Colors.grey},
    // {"nama": "Sweater", "price": 80000, "warna": Colors.pink},
    // {"nama": "Rok", "price": 80000, "warna": Colors.lightGreenAccent},
    // {"nama": "Celana", "price": 80000, "warna": Colors.cyanAccent},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Price Pakaian")),
      drawer: MyDrawer(),

      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: produk.length,
        itemBuilder: (BuildContext context, int index) {
          final dataProduk = produk[index];
          return ListTile(
            leading: Icon(dataProduk["icon"]),
            title: Text(dataProduk["nama"]),
            subtitle: Text(dataProduk["price"].toString()),
            trailing: Icon(Icons.add_shopping_cart),
          );
        },
      ),
    );
  }
}
