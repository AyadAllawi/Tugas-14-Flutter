import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:ppkd_batch_3/Day_12/chekbox.dart';
=======
import 'package:ppkd_batch_3/Day_12/checkbox.dart';
>>>>>>> d24d143e3adfd62f112d87136312235388d7c80f

class Halaman extends StatefulWidget {
  const Halaman({super.key});

  @override
  State<Halaman> createState() => _HalamanState();
}

class _HalamanState extends State<Halaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/foto/mount.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 200),
              const Icon(
                Icons.dashboard,
                size: 80,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              const SizedBox(height: 20),
              const Text(
                "Selamat Datang di Dashboard!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Semoga harimu menyenangkan 😊",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // contoh ke halaman lain
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cekbox()),
                  );
                },
                child: const Text("Lihat Drawer"),
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(builder: (context) => const Cekbox()),
              //     );
              //   },
              //   child: const Text(
              //     'Go to CheckBox',
              //     style: TextStyle(fontSize: 18),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
