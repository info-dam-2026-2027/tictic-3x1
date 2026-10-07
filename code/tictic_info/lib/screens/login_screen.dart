import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:tictic_info/styles/sizes.dart';
import 'package:tictic_info/widgets/my_password_input.dart';
import 'package:tictic_info/widgets/my_text_input.dart';

import '../widgets/navigator_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              SizedBox(height: 24),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? validatorMail(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            MyTextInput(
              controller: mailController,
              validation: validatorMail,
              label: 'Adresse mail *',
              placeholder: 'Ex: johndoe@example.com',
            ),
            SizedBox(height: 24),
            MyPasswordInput(passwordController: passwordController),
            SizedBox(height: 24),
            NavigatorButton(
              onTap: () => {
                if (_formKey.currentState!.validate())
                  {Navigator.pushNamed(context, '/home')},
              },
              label: 'Je me connecte',
              color: 'dark',
            ),
          ],
        ),
      ),
    );
  }
}
