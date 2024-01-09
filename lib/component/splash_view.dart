import 'dart:async';
import 'package:flutter/material.dart';
 
import '../screen/home_screen.dart';
import 'animatedcontainer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF000515),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20 * 5,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.teal,
              value: value,
            ),
            const SizedBox(
              height: 20 / 2,
            ),
            Text(
              '${(value * 100).toInt()}%',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.pink,
                        blurRadius: 10,
                        offset: Offset(2, 2)),
                    Shadow(
                        color: Colors.blue,
                        blurRadius: 10,
                        offset: Offset(-2, -2)),
                  ]),
            )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
