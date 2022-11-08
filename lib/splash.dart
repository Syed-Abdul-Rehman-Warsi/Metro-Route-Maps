import 'package:dubai_metro_app/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: ((context) => const MyHomePage(
                  title: 'Dubai',
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xE5E5E5),
      child: Container(
        color: Color(0xE5E5E5),
        height: 200,
        width: 400,
        child: const Align(
          alignment: Alignment.center,
          child: Image(image: AssetImage('images/logo.jpg')),
        ),
      ),
    );
  }
}
