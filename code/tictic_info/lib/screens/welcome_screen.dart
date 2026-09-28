import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/back1.png'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            Text('Dylan'),
          ],
        ),
      ),
    );
  }
}
