import 'package:flutter/material.dart';

class liste extends StatelessWidget {
  const liste({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cars = [
      {
        "name": "Alphard",
        "price": "Rp 800.000 / 24 Jam",
        "image": "assets/images/alphard.jpg",
      },
      {
        "name": "Fortuner",
        "price": "Rp 600.000 / 24 Jam",
        "image": "assets/images/fortuner.jpg",
      },
      {
        "name": "Innova Reborn",
        "price": "Rp 450.000 / 24 Jam",
        "image": "assets/images/inova.jpg",
      },
      {
        "name": "Honda Raize",
        "price": "Rp 400.000 / 24 Jam",
        "image": "assets/images/raize.jpg",
      },
      {
        "name": "New Avanza",
        "price": "Rp 375.000 / 24 Jam",
        "image": "assets/images/avanza.jpg",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("YadCar", style: TextStyle(fontFamily: 'Anton')),
        centerTitle: true,
      ),
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
                  Text(
                    "Data Penyewa",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Anton',
                    ),
                  ),
                  SizedBox(height: 12),
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
              "Mobil Tersedia",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            ListView.builder(
              itemCount: cars.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final car = cars[index];
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      car['image']!,
                      width: 90,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    car['name']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(car['price']!),
                  contentPadding: EdgeInsets.symmetric(vertical: 4),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
