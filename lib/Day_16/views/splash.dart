import 'package:flutter/material.dart';
import 'package:ppkd_batch_3/Day_12/bottnav.dart';
import 'package:ppkd_batch_3/Day_16/preference/shared_preference.dart';
import 'package:ppkd_batch_3/Day_16/utils/app_image.dart';
import 'package:ppkd_batch_3/Day_16/views/register_screen.dart';
import 'package:ppkd_batch_3/extension/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const id = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    bool? isLogin = await PreferenceHandler.getLogin();

    Future.delayed(Duration(seconds: 3)).then((value) async {
      print(isLogin);
      if (isLogin == true) {
        context.pushReplacement(BotNav1());
      } else {
        context.push(RegisterScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImage.disdik),
            SizedBox(height: 20),
            Text("Welcome"),
          ],
        ),
      ),
    );
  }
}
