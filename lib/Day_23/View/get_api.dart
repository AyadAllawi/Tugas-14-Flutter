import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/draw.dart';
import 'package:ppkd_batch_3/Day_23/API/get_cat.dart';
import 'package:ppkd_batch_3/Day_23/Model/cat_model.dart';

class CatScreen extends StatefulWidget {
  const CatScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<CatScreen> createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cat Gallery",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Color.fromARGB(255, 31, 33, 36),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 191, 188, 197),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const MyDrawer(),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/foto/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder<List<Welcome>>(
                future: getUser(),
                builder: (BuildContext context, AsyncSnapshot<List<Welcome>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasData) {
                    final users = snapshot.data!;
                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1.0,
                          ),
                      shrinkWrap: true,
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int index) {
                        final dataCat = users[index];
                        return InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) {
                                return DraggableScrollableSheet(
                                  expand: false,
                                  initialChildSize: 0.5,
                                  minChildSize: 0.3,
                                  maxChildSize: 0.9,
                                  builder: (context, scrollController) {
                                    return SingleChildScrollView(
                                      controller: scrollController,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                dataCat.url,
                                                fit: BoxFit.cover,
                                                width: double.infinity,
                                              ),
                                            ),
                                            const SizedBox(height: 12),
                                            Text(
                                              "Cat ${dataCat.id}",
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            const Text(
                                              "Ini adalah kucing lucu dari API 😺 "
                                              "Keterangan ini bisa panjang, jadi bisa discroll.",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            // ElevatedButton.icon(
                                            //   onPressed: () =>
                                            //       Navigator.pop(context),
                                            //   icon: const Icon(Icons.close),
                                            //   label: const Text(''),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },

                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      dataCat.url,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Cat ${dataCat.id}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text(
                        "Failed to Load Data",
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
