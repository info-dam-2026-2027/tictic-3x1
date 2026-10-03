import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/sizes.dart';
import 'package:tictic_info/styles/texts.dart';
import 'package:tictic_info/widgets/carousel.dart';

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

class NavigatorButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String label;
  final String color;

  const NavigatorButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color == 'dark' ? kDarkGreen : kLightGreen,
          border: Border.all(
            width: 2,
            color: color == 'dark' ? kDarkGreen : kLightGreen,
          ),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.16),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: color == 'dark' ? kButtonMainColor : kButtonMainLightColor,
          ),
        ),
      ),
    );
  }
}
