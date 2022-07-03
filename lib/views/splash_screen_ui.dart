import 'package:flutter/material.dart';
import 'package:kinkun_app/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (
            context,
          ) =>
              HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 100.0,
              backgroundImage: AssetImage(
                'assets/images/fastfood.png',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'กินกัน',
              style: TextStyle(
                color: Colors.green[800],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
