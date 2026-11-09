
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tictic_info/screens/home_screen.dart';
import 'package:tictic_info/validators/validators.dart';
import 'package:tictic_info/widgets/main_button.dart';

import '../../styles/sizes.dart';
import '../my_password_input.dart';
import '../my_text_input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? emailError;
  String? passwordError;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    mailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            MyTextInput(
              controller: mailController,
              validation: Validators.email,
              label: 'Adresse mail *',
              placeholder: 'Ex: johndoe@example.com',
            ),
            SizedBox(height: kSpacer),
            MyPasswordInput(passwordController: passwordController),
            SizedBox(height: kSpacer),
            Align(
              alignment: Alignment.bottomRight,
              child: MainButton(
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    String email = mailController.text;
                    String password = passwordController.text;
                    try {
                      await _auth.signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      ).then((value) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text('Vous vous êtes connecté avec succès!'),
                            duration: Duration(seconds: 2),
                          ),
                        );

                        Navigator.pushNamed(context, HomeScreen.routeName);
                      });
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Erreur de connexion : $e'),
                          ),
                        );
                      }
                    }
                  }
                },
                label: 'Je me connecte',
                color: 'dark',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
