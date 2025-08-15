import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_16/preference/shared_preference.dart';
import 'package:ppkd_batch_3/Day_9/login.dart';
import 'package:ppkd_batch_3/extension/navigation.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PreferenceHandler.clearLogin();
        context.pushReplacementNamed(Login.id);
      },
      child: Text("Keluar"),
    );
  }
}
