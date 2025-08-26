import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_23/API/get_cat.dart';
import 'package:ppkd_batch_3/Day_23/Model/cat_model.dart';

// Remove unused cat_model import if not needed

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
      appBar: AppBar(title: Text("Cat API"), centerTitle: true),
      body: Center(
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
                        padding: const EdgeInsets.all(8),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 1,
                            ),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: users.length,
                        itemBuilder: (BuildContext context, int index) {
                          final dataCat = users[index];
                          return ListTile(
                            leading: Image.network(dataCat.url),
                            // title: Text(dataCat.id.toString()),
                            // subtitle: Text(
                            //   dataCat.id,
                            //   textHeightBehavior: TextHeightBehavior(
                            //     applyHeightToFirstAscent: false,
                            //     applyHeightToLastDescent: false,
                            //   ),
                            // ),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text("Error: ${snapshot.error}");
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
