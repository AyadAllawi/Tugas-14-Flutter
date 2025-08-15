import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';
import 'package:ppkd_batch_3/Day_15/form.dart';
import 'package:ppkd_batch_3/Day_16/model/tiket.dart';
import 'package:ppkd_batch_3/Day_16/sqflite/db_helper.dart';

class Day16UserScreen extends StatefulWidget {
  const Day16UserScreen({super.key});

  @override
  State<Day16UserScreen> createState() => _Day16UserScreenState();
}

class _Day16UserScreenState extends State<Day16UserScreen> {
  List<Tiket> users = [];
  @override
  void initState() {
    super.initState();
    getUser();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController judulFilmController = TextEditingController();
  final TextEditingController jumlahTiketController = TextEditingController();

  Future<void> getUser() async {
    final dataUser = await DbHelper.getAllTickets();
    print(dataUser);
    setState(() {
      users = dataUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Data Pemesanan Tiket Bioskop",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
            ),
            SizedBox(height: 20),
            TextFormConst(hintText: "Nama", controller: nameController),
            TextFormConst(hintText: "Email", controller: emailController),
            TextFormConst(hintText: "Password", controller: passwordController),
            TextFormConst(hintText: "Phone", controller: phoneController),
            TextFormConst(
              hintText: "Judul Film",
              controller: judulFilmController,
            ),
            TextFormConst(
              hintText: "Jumlah Tiket",
              controller: jumlahTiketController,
            ),

            ElevatedButton(
              onPressed: () async {
                final email = emailController.text.trim();
                final password = passwordController.text.trim();
                final name = nameController.text.trim();
                final phone = phoneController.text.trim();
                final judulFilm = judulFilmController.text.trim();
                final jumlahTiket = jumlahTiketController.text.trim();
                if (email.isEmpty ||
                    password.isEmpty ||
                    name.isEmpty ||
                    phone.isEmpty ||
                    judulFilm.isEmpty ||
                    jumlahTiket.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Email, Password, dan Nama tidak boleh kosong",
                      ),
                    ),
                  );

                  return;
                }
                final user = Tiket(
                  email: email,
                  password: password,
                  nama: name,
                  phone: phone,
                  judulFilm: judulFilm,
                  jumlahTiket: jumlahTiket,
                );
                await DbHelper.registerUser(user);
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Pemebelian Berhasil")),
                  );
                });
                getUser();
                setState(() {});
              },
              child: Text("Tambah Tiket"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final dataUserLogin = users[index];
                return ListTile(
                  title: Text(dataUserLogin.nama),
                  subtitle: Text(dataUserLogin.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Edit Data'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormConst(
                                    controller: nameController
                                      ..text = dataUserLogin.nama,
                                    hintText: 'Nama',
                                  ),
                                  SizedBox(height: 12),
                                  TextFormConst(
                                    controller: emailController
                                      ..text = dataUserLogin.email,
                                    hintText: 'Email',
                                  ),
                                  SizedBox(height: 12),

                                  TextFormConst(
                                    controller: passwordController
                                      ..text = dataUserLogin.password,
                                    hintText: 'Password',
                                  ),
                                  TextFormConst(
                                    controller: judulFilmController
                                      ..text = dataUserLogin.password,
                                    hintText: 'Judul Film',
                                  ),
                                  TextFormConst(
                                    controller: jumlahTiketController
                                      ..text = dataUserLogin.password,
                                    hintText: 'Jumlah Tiket',
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    final dataUser = Tiket(
                                      id: dataUserLogin.id!,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      nama: nameController.text.trim(),
                                      phone: phoneController.text.trim(),
                                      judulFilm: judulFilmController.text
                                          .trim(),
                                      jumlahTiket: jumlahTiketController.text
                                          .trim(),
                                    );
                                    DbHelper.updateUser(dataUser);
                                    getUser();
                                    Navigator.pop(context);
                                  },
                                  child: Text('Simpan'),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Batal'),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          DbHelper.deleteUser(dataUserLogin.id!);
                          getUser();
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
