import 'package:flutter/material.dart';
import 'package:wanza/src/pages/home_page.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({Key? key}) : super(key: key);
  static const routeName = '/';

  Future splash(context) async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.pushReplacementNamed(context, HomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    splash(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 68, 0, 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/wanza_logo',
                height: 300,
                width: 350,
                fit: BoxFit.cover,
              ),
              Text(
                'ዋንዛ ፈርኒሺንግ ኢንደስትሪ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'WANZA Furnishing Industry P.L.C',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 90),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
