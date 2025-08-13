import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';

class Cekbox extends StatefulWidget {
  const Cekbox({super.key});

  @override
  State<Cekbox> createState() => _CekboxState();
}

class _CekboxState extends State<Cekbox> {
  bool isCheck = false;
  bool isCheckSwitch = false;
  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox", style: TextStyle(fontFamily: 'Poppins')),
        centerTitle: false,
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Color.fromARGB(255, 114, 127, 138),
      //         ),
      //         child: Text(
      //           'Dashboard',
      //           style: TextStyle(color: Colors.white, fontSize: 24),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.check_box),
      //         title: const Text(
      //           'CheckBox',
      //           style: TextStyle(fontFamily: 'Poppins'),
      //         ),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Cekbox()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.brightness_6),
      //         title: const Text('Switch'),
      //         onTap: () {
      //           {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => const Tukar()),
      //             );
      //           }
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.arrow_drop_down),
      //         title: const Text('Dropdown'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Dorp()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.date_range),
      //         title: const Text('Date'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Date()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.punch_clock),
      //         title: const Text('Time'),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Time()),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      drawer: MyDrawer(),

      body: Column(
        children: [
          // Checkbox
          Text(
            "Syarat & Ketentuan",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          // Spacer(),
          Text(
            "LorepLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
          ),

          Spacer(),
          Text(
            "Saya menyetujui semua persyaratan yang berlaku.",
            style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
          ),

          Row(
            children: [
              Checkbox(
                activeColor: Colors.blue,
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value!;
                  });
                },
              ),
              Text(
                isCheck
                    ? "Lanjutkan pendaftaran diperbolehkan"
                    : "Anda belum bisa melanjutkan",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
