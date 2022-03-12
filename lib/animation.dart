import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animate extends StatelessWidget {
  const Animate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets9.lottiefiles.com/packages/lf20_qf1pt6ua.json',
          width: 250,
          animate: true,
        ),
      ),
    );
  }
}
