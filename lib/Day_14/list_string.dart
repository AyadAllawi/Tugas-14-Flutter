import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';

class ListString extends StatefulWidget {
  const ListString({super.key});

  @override
  State<ListString> createState() => _ListStringState();
}

class _ListStringState extends State<ListString> {
  final List<String> namaPakaian = [
    "Blus",
    "Kemeja",
    "Kaos",
    "Tank Top",
    "Sweater",
    "Rok",
    "Celana",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pakaian Wanita")),
      drawer: MyDrawer(),
      body: Column(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: namaPakaian.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(child: Text("${index + 1}")),
                title: Text(namaPakaian[index]),
                trailing: Icon(Icons.shopping_cart), // 🔹 icon kanan
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${namaPakaian[index]} dipilih")),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
