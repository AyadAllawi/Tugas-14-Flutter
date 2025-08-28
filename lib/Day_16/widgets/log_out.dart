import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_9/login.dart';
import 'package:ppkd_batch_3/extension/navigation.dart';
import 'package:ppkd_batch_3/preference/shared_preference.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PreferenceHandler.removeLogin();
        context.pushReplacementNamed(Login.id);
      },
      child: Text("Keluar"),
    );
  }
}
