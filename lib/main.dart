import 'package:basketballcounter/Views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallCounter());
}

class BasketBallCounter extends StatelessWidget {
  const BasketBallCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
