import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/checkbox.dart';
import 'package:ppkd_batch_3/Day_12/date.dart';
import 'package:ppkd_batch_3/Day_12/dropdown.dart';
import 'package:ppkd_batch_3/Day_12/switch.dart';
import 'package:ppkd_batch_3/Day_12/time.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            leading: const Icon(Icons.account_box),
            title: const Text('CheckBox'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Cekbox()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.switch_access_shortcut),
            title: const Text('Switch'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Tukar()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_drop_down),
            title: const Text('DropDown'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Dorp()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.date_range),
            title: const Text('Date'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Date()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.timelapse),
            title: const Text('Time'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Time()),
              );
            },
          ),
        ],
      ),
    );
  }
}
