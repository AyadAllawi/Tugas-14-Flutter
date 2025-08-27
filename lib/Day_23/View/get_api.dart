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
  // void initState() {
  //   super.initState();
  //   getUser();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 62, 61, 65),

      appBar: AppBar(
        title: Text(
          "Cat Galery",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Color.fromARGB(255, 31, 33, 36),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 191, 188, 197),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            FutureBuilder<List<Welcome>>(
              future: getUser(),
              builder:
                  (
                    BuildContext context,
                    AsyncSnapshot<List<Welcome>> snapshot,
                  ) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.hasData) {
                      final users = snapshot.data!;
                      return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
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
                          return Card(
                            elevation: 2,
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
                                      loadingBuilder:
                                          (context, child, loadingProgress) {
                                            if (loadingProgress == null)
                                              return child;
                                            return Center(
                                              child: Container(
                                                child:
                                                    const CircularProgressIndicator(),
                                              ),
                                            );
                                          },
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                            return const Icon(
                                              Icons.error,
                                              color: Colors.red,
                                            );
                                          },
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(8.0),
                                  //   child: Text(
                                  //     'ID: ${dataCat.id}',
                                  //     style: const TextStyle(fontSize: 12),
                                  //     overflow: TextOverflow.ellipsis,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return Text("Failed to Load Data");
                    }
                  },
            ),
          ],
        ),
      ),
    );
  }
}
