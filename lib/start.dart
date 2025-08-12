import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MY PROFILE",
          style: TextStyle(
            fontFamily: "Rubik",
            color: Color.fromARGB(255, 255, 255, 254),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 73, 151),
        actions: const [
          Icon(
            Icons.message,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ],
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      // backroundColor: Colors.black
      body: Column(
        // MainAxis center untuk posisi ketengah
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 35, color: Color.fromARGB(255, 0, 0, 0)),
          Text(
            "AYAD ALLAWI",
            style: TextStyle(
              fontSize: 25,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontFamily: "Anton",
            ),
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: const Color.fromARGB(255, 4, 67, 240),
              ),
              Text("AYAD ALLAWI", style: TextStyle(fontFamily: "Monoton")),
            ],
          ),

          SizedBox(height: 10),

          Text(
            "Nama Saya adalah Ayad Allawi, saya sekarang sedang belajar UI Flutter, ya sedikit bingung, tetapi tidak mematahkan semangat saya ",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
