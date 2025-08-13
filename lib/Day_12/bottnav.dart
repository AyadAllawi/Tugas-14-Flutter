import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/about.dart';
import 'package:ppkd_batch_3/Day_12/halaman.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Notch Bottom Bar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BotNav1(),
    );
  }
}

class BotNav1 extends StatefulWidget {
  const BotNav1({super.key});

  @override
  State<BotNav1> createState() => _BotNav1State();
}

class _BotNav1State extends State<BotNav1> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller = NotchBottomBarController(
    index: 0,
  );

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// widget list
    final List<Widget> bottomBarPages = [
      // Halaman
      const Halaman(),
      const About(),
      const Page3(),
      // const Page4(),
      // const Page5(),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomBarPages.length,
          (index) => bottomBarPages[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: const Color.fromARGB(255, 39, 63, 75),
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,

              // notchShader: const SweepGradient(
              //   startAngle: 0,
              //   endAngle: pi / 2,
              //   colors: [Colors.red, Colors.green, Colors.orange],
              //   tileMode: TileMode.mirror,
              // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
              notchColor: Colors.black87,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 300,

              itemLabelStyle: const TextStyle(fontSize: 10),

              elevation: 1,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(Icons.home_filled, color: Colors.blueGrey),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  itemLabel: 'Dashboard',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.info_outline,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.info_outline,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  itemLabel: 'About',
                ),
                BottomBarItem(
                  inActiveItem: Icon(Icons.settings, color: Colors.blueGrey),
                  activeItem: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  itemLabel: 'Settings',
                  // ),
                  // BottomBarItem(
                  //   inActiveItem: Icon(Icons.person, color: Colors.blueGrey),
                  //   activeItem: Icon(Icons.person, color: Colors.yellow),
                  //   itemLabel: 'Page 4',
                  // ),
                ),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}

/// add controller to check weather index through change or not. in page 1
class Page1 extends StatelessWidget {
  final NotchBottomBarController? controller;

  const Page1({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        /// adding GestureDetector
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Halaman(),
                // const MyDrawer(),
              ),
            );
          },
          child: const Text(
            'Page 1 (Tap untuk ke Halaman)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(child: Text('About')),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: const Center(child: Text('Page 3')),
    );
  }
}

// class Page4 extends StatelessWidget {
//   const Page4({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: const Center(child: Text('Page 4')),
//     );
//   }
// }

// class Page5 extends StatelessWidget {
//   const Page5({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.lightGreenAccent,
//       child: const Center(child: Text('Page 5')),
//     );
//   }
// }
