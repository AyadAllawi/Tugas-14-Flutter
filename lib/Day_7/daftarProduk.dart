import 'package:flutter/material.dart';

class liste extends StatelessWidget {
  const liste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("YadCar"), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FORMULIR
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Nama",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "No. HP",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Alamat",
                      prefixIcon: Icon(Icons.location_city),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // GALERI
            Text(
              "Pilihan Mobil",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: 12),
            // GridView.count(
            //   crossAxisCount: 3,
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   crossAxisSpacing: 8,
            //   mainAxisSpacing: 8,
            //   children: List.generate(6, (index) {
            //     return Stack(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             image: DecorationImage(
            //               image: AssetImage('assets/im/foto${index + 1}.jpg'),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //         // Positioned(
            //         //   bottom: 8,
            //         //   left: 8,
            //         //   child: Text(
            //         //     'Gambar ${index + 1}',
            //         //     style: TextStyle(
            //         //       color: const Color.fromARGB(255, 248, 248, 248),
            //         //       fontWeight: FontWeight.bold,
            //         //       shadows: [Shadow(color: Colors.black, blurRadius: 2)],
            //         //     ),
            //         //   ),
            //         // ),
            //       ],
            //     );
            //   }),
            // ),
            SizedBox(height: 24),

            // PRODUK LIST
            Text(
              "Produk Tersedia",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            ListTile(
              leading: Image.asset("assets/images/alphard.jpg"),
              title: Text("Alphard"),
              subtitle: Text("Rp 800.000 / 24 Jam"),
            ),
            ListTile(
              leading: Image.asset("assets/images/fortuner.jpg"),
              title: Text("Fortuner"),
              subtitle: Text("Rp 600.000 / 24 Jam"),
            ),
            ListTile(
              leading: Image.asset("assets/images/inova.jpg"),
              title: Text("Innova Reborn"),
              subtitle: Text("Rp 450.000 / 24 Jam"),
            ),
            ListTile(
              leading: Image.asset("assets/images/raize.jpg"),
              title: Text("Honda Raize"),
              subtitle: Text("Rp 400.000 / 24 Jam"),
            ),
            ListTile(
              leading: Image.asset("assets/images/avanza.jpg"),
              title: Text("New Avanza"),
              subtitle: Text("Rp 375.000 / 24 Jam"),
            ),
          ],
        ),
      ),
    );
  }
}
