import 'package:flutter/material.dart';

class Interaction extends StatefulWidget {
  const Interaction({super.key});

  @override
  State<Interaction> createState() => _InteractionState();
}

class _InteractionState extends State<Interaction> {
  bool showName = true;
  bool liked = true;
  bool tampil = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaction Page", style: TextStyle(fontFamily: 'Anton')),
        centerTitle: false,
      ),

      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 40), // atur jarak atas sesuai kebutuhan
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showName = !showName;
                });
              },
              child: Text("Klik Saya"),
            ),
            if (showName) Text("Ayad Allawi"),

            SizedBox(height: 20),

            IconButton(
              onPressed: () {
                setState(() {
                  liked = !liked;
                });
              },
              icon: Icon(Icons.favorite),
              color: liked ? Colors.red : Colors.grey,
            ),

            SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                // color: const Color.fromARGB(31, 0, 0, 0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 154, 167, 173),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          tampil = !tampil;
                        });
                      },
                      child: Text(
                        "Lihat Selengkapnya",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Anton',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  if (tampil)
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 229, 227),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Text(
                        "Ini adalah tampilan tombol lihat selengkapnya saya diajarkan dengan Bang hardi terkait container di dalam container",
                        style: TextStyle(fontFamily: 'Anton'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
