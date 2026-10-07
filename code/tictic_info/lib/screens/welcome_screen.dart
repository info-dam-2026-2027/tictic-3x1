import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/sizes.dart';
import 'package:tictic_info/styles/texts.dart';
import 'package:tictic_info/widgets/carousel.dart';

import '../widgets/navigator_button.dart';

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
              Carousel(),
              NavigatorButton(
                onTap: () => {Navigator.pushNamed(context, '/home')},
                label: 'Continuer sans compte',
                color: 'dark',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavigatorButton(
                      onTap: () => {Navigator.pushNamed(context, '/login')},
                      label: 'Se connecter',
                      color: 'light',
                    ),
                    NavigatorButton(
                      onTap: () => {Navigator.pushNamed(context, '/register')},
                      label: 'S’inscrire',
                      color: 'light',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}