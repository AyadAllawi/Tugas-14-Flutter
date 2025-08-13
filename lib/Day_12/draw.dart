import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/checkbox.dart';
import 'package:ppkd_batch_3/Day_12/date.dart';
import 'package:ppkd_batch_3/Day_12/dropdown.dart';
import 'package:ppkd_batch_3/Day_12/switch.dart';
import 'package:ppkd_batch_3/Day_12/time.dart';
import 'package:ppkd_batch_3/Day_14/list_map.dart';
import 'package:ppkd_batch_3/Day_14/list_model.dart';
import 'package:ppkd_batch_3/Day_14/list_string.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('List String'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ListString()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('List Map'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Kategori()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('List Build'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ListModel()),
              );
            },
          ),
        ],
      ),
    );
  }
}
