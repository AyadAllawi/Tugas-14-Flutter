import 'package:flutter/material.dart';

class Apalah extends StatelessWidget {
  const Apalah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("HALLOOOO"),
        ),
      ),
    );
  }
}
