import 'package:flutter/material.dart';

final List<Color> color = [
  const Color.fromARGB(255, 231, 3, 3),
  const Color.fromARGB(255, 251, 255, 0),
  const Color.fromARGB(255, 0, 255, 13),
  Colors.tealAccent,
  Colors.tealAccent,
  Colors.tealAccent,
];

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form & Gambar'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 203, 212, 231),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "FORM ",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // FORMULIR PENGGUNA
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 209, 215, 228),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    // NAMA
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Nama',
                      ),
                    ),
                    const SizedBox(height: 12),
                    // EMAIL
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 12),
                    // NO HP
                    const TextField(
                      style: TextStyle(
                        fontFamily: 'Anton',
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone_android),
                        labelText: 'No. HP',
                      ),
                    ),
                    const SizedBox(height: 12),
                    // DESKRIPSI
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.description_rounded),
                        labelText: 'Deskripsi',
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // GALERI GRID
              const Text(
                'GAMBAR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(6, (index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: color[index],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Text(
                          'Foto ${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
