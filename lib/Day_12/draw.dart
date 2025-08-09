import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/checkbox.dart';
import 'package:ppkd_batch_3/Day_12/switch.dart';

// / Flutter code sample for [Drawer].

void main() => runApp(const DrawerApp());

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Draw());
  }
}

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas 7 Flutter')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 114, 127, 138),
              ),
              child: Text(
                'Dashboard',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.check_box),
              title: const Text(
                'CheckBox',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cekbox()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text('Switch'),
              onTap: () {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tukar()),
                  );
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_drop_down),
              title: const Text('Dropdown'),
              onTap: () {
                setState(() {
                  selectedPage = 'Dropdown';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.date_range),
              title: const Text('Tanggal'),
              onTap: () {
                setState(() {
                  selectedPage = 'Tanggal';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.punch_clock),
              title: const Text('Jam'),
              onTap: () {
                setState(() {
                  selectedPage = 'Jam';
                });
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('Page: $selectedPage')),
    );
  }
}
