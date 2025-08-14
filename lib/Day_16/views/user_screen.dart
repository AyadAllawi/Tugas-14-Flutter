import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_16/model/tiket.dart';
import 'package:ppkd_batch_3/Day_16/sqflite/db_helper.dart';

class UserScreen extends StatefulWidget {
  final String nama;
  final String email;
  final String judulFilm;
  final String jumlahTiket;

  const UserScreen({
    super.key,
    required this.nama,
    required this.email,
    required this.judulFilm,
    required this.jumlahTiket,
  });

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<Tiket> tickets = [];

  @override
  void initState() {
    super.initState();
    _loadTickets();
  }

  void _loadTickets() async {
    final data = await DbHelper.getTickets();
    setState(() {
      tickets = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Tiket Terbeli")),
      body: tickets.isEmpty
          ? const Center(child: Text("Belum ada tiket terbeli"))
          : ListView.builder(
              itemCount: tickets.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tickets[index].judulFilm),
                  subtitle: Text(
                    "${tickets[index].nama} - ${tickets[index].jumlahTiket} tiket",
                  ),
                );
              },
            ),
    );
  }
}
