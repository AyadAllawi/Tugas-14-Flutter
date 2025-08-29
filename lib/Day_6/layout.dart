import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_25/views/login_api.dart';
import 'package:ppkd_batch_3/preference/shared_preference.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PROFIL LENGKAP",
          style: TextStyle(
            fontFamily: "Anton",
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 52, 103, 170),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.purple, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        'assets/images/foto/AyadAllawi.jpg',
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'AYAD ALLAWI',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Monoton',
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Email Box
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF40E0D0), Color(0xFF1E90FF)],
                        ),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.email, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'ayadallawi315@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Anton',
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Phone Box
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF40E0D0), Color(0xFF1E90FF)],
                        ),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.phone, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            '085880475905',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Anton',
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Row Postingan & Followers
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [Colors.cyan, Colors.blue],
                              ),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.post_add,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Postingan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Anton',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.all(40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [Colors.cyan, Colors.blueAccent],
                              ),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.people,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Anton',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Halo! Saya Ayad, seorang lulusan SMA yang sedang belajar sebagai pengembang Flutter pemula, membangun UI yang keren dan kreatif',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Anton',
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        PreferenceHandler.removeLogin();
                        Navigator.pushNamed(context, LoginAPIScreen.id);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Logout ditekan")),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        color: Colors.blueAccent,
                        child: Column(
                          children: [
                            const Text(
                              'AYAD PROGRAMING',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Monoton',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
