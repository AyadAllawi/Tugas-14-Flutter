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
  bool showBox = true;
  int count = 0;

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

            Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Text("Tambah"),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(count.toString(), style: TextStyle(fontSize: 60)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {});
                        count--;
                        print(count);
                      },
                      icon: Icon(Icons.minimize),
                    ),

                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 30),

                InkWell(
                  onTap: () {
                    print('Kotak Disentuh');
                    setState(() {
                      showBox = !showBox;
                    });
                  },

                  child: Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Kotak Hadiah")),
                    ),
                  ),
                ),
                if (showBox) Text("Hallo Apa Kabar!"),
              ],
            ),

            SizedBox(height: 30),

            GestureDetector(
              onTap: () => print('Aku di tekan'),
              onDoubleTap: () => print('hallo tekan'),
              onLongPress: () => print('iyohhh'),

              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Color(0xFF769820),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("coba aku")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
