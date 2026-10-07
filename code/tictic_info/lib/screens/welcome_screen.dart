import 'package:flutter/material.dart';
import 'package:tictic_info/screens/home_screen.dart';
import 'package:tictic_info/screens/login_screen.dart';
import 'package:tictic_info/screens/register_screen.dart';
import 'package:tictic_info/styles/paddings.dart';
import 'package:tictic_info/styles/sizes.dart';
import 'package:tictic_info/widgets/carousel.dart';

import '../widgets/logo_application.dart';
import '../widgets/main_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static final String routeName = '/';

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
                child: LogoApplication(),
              ),
              Carousel(),
              MainButton(
                onTap: () => {Navigator.pushNamed(context, HomeScreen.routeName)},
                label: 'Continuer sans compte',
                color: 'dark',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPaddingM,
                  vertical: kPaddingXL,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainButton(
                      onTap: () => {Navigator.pushNamed(context, LoginScreen.routeName)},
                      label: 'Se connecter',
                      color: 'light',
                    ),
                    MainButton(
                      onTap: () => {Navigator.pushNamed(context, RegisterScreen.routeName)},
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