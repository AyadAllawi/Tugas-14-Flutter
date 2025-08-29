import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:ppkd_batch_3/Day_25/views/login_api.dart';

void main() {
  initializeDateFormatting("id_ID");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 3, 3, 3),
        ),
      ),
      initialRoute: LoginAPIScreen.id,
      routes: {
        '/login_api': (context) => LoginAPIScreen(),

        // // Tugas10.id: (context) => Tugas10(),
        // RegisterScreen.id: (context) => const RegisterScreen(),
        // // '/Tugastes': (context) => Tugastes(),
        // // Tugas7flutter.id: (context) => Tugas7flutter(),
        // Tugas8.id: (context) => Tugas8(),
        // },
        // home: LoginAPIScreen(),
      },
    );
    // Navigator.pushNamed(context, '/Tugas6');
    // return MaterialApp(
    //   initialRoute: '/',
    //   routes: {
    //     '/': (context) => Tugas6(),
    //     '/Tugastes': (context) => Tugastes(),
    //   },
    // );
  }
}
