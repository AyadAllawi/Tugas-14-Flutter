import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';
import 'package:ppkd_batch_3/Day_14/model/model_pakaian.dart';

class ListModel extends StatefulWidget {
  const ListModel({super.key});

  @override
  State<ListModel> createState() => _ListModelState();
}

class _ListModelState extends State<ListModel> {
  final List<ProdukModel> produkModel = [
    ProdukModel(
      name: "Blouse",
      price: "Rp1.500.000",
      icon: Icons.checkroom, // ikon baju gantungan
    ),
    ProdukModel(
      name: "Kemeja",
      price: "Rp1.200.000",
      icon: Icons.checkroom, // sama, bisa pakai ikon yang sama atau ganti
    ),
    ProdukModel(name: "Kaos", price: "Rp500.000", icon: Icons.checkroom_sharp),
    ProdukModel(
      name: "Tank Top",
      price: "Rp400.000",
      icon: Icons.accessibility, // mirip bentuk tank top
    ),
    ProdukModel(name: "Sweater", price: "Rp250.000", icon: Icons.checkroom),
    ProdukModel(name: "Rok", price: "Rp1.200.000", icon: Icons.checkroom),
    ProdukModel(name: "Celana", price: "Rp1.800.000", icon: Icons.checkroom),

    ProdukModel(
      name: "Rok",
      price: "Rp1.200.000",
      icon: Icons.checkroom, // rok
    ),
    ProdukModel(
      name: "Celana",
      price: "Rp1.800.000",
      icon: Icons.shopping_bag, // alternatif celana
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fashion")),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Pakaian Wanita",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: produkModel.length,
                itemBuilder: (BuildContext context, int index) {
                  final modelProductData = produkModel[index];
                  return Card(
                    child: ListTile(
                      title: Text(modelProductData.name),
                      subtitle: Text(modelProductData.price),
                      leading: Icon(modelProductData.icon),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
