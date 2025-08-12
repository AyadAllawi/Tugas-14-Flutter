// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:ppkd_batch_3/form/about.dart';
// import 'package:ppkd_batch_3/Day_9/login.dart';

// class BotBar1 extends StatefulWidget {
//   const BotBar1({super.key});
//   static const id = "/botbar";

//   @override
//   State<BotBar1> createState() => _BotBar1State();
// }

// class _BotBar1State extends State<BotBar1> {
//   int _currentIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//     Login(),
//     About(),
//     Center(child: Text("Halaman 2")),
//     Center(child: Text("Halaman 3")),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: _widgetOptions[_currentIndex]),
//       bottomNavigationBar: BottomNavyBar(
//         showInactiveTitle: true,
//         selectedIndex: _currentIndex,
//         showElevation: true,
//         itemCornerRadius: 24,
//         // itemPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//         iconSize: 20,
//         curve: Curves.easeIn,
//         onItemSelected: (index) => setState(() => _currentIndex = index),
//         items: <BottomNavyBarItem>[
//           BottomNavyBarItem(
//             icon: Icon(Icons.house),
//             title: Text("Home"),
//             activeColor: Colors.red,
//             textAlign: TextAlign.center,
//           ),

//           BottomNavyBarItem(
//             icon: Icon(Icons.person),
//             title: Text("About"),
//             activeColor: Colors.purpleAccent,
//             textAlign: TextAlign.center,
//           ),

//           BottomNavyBarItem(
//             icon: Icon(Icons.search),
//             title: Text("Search"),
//             activeColor: Colors.pinkAccent,
//             textAlign: TextAlign.center,
//           ),

//           BottomNavyBarItem(
//             icon: Icon(Icons.settings),
//             title: Text("Setting"),
//             activeColor: Colors.blueAccent,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
