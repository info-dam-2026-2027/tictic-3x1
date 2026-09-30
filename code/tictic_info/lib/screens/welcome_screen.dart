import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/styles/sizes.dart';
import 'package:tictic_info/styles/texts.dart';

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
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: kWelcomeLogoPaddingTop,
                  bottom: kWelcomeLogoPaddingBottom,
                ),
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width: kWelcomeLogoSize,
                ),
              ),
              Text('Dylan', style: kTitleWelcomePage),
              Text('est', style: kTitleWelcomePage),
              Text('cool', style: kTitleWelcomePage),
            ],
          ),
        ),
      ),
    );
  }
}
