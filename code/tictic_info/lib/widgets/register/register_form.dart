import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import 'package:dto/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/material.dart';
import 'package:tictic_info/screens/home_screen.dart';

import '../../styles/sizes.dart';
import '../../validators/validators.dart';
import '../main_button.dart';
import '../my_password_input.dart';
import '../my_text_input.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            MyTextInput(
              controller: firstnameController,
              validation: Validators.required,
              label: 'Prénom *',
              placeholder: 'Ex: John',
            ),
            SizedBox(height: kSpacer),
            MyTextInput(
              controller: lastnameController,
              validation: Validators.required,
              label: 'Nom de famille *',
              placeholder: 'Ex: Doe',
            ),
            SizedBox(height: kSpacer),
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
                    final db = FirestoreODM(
                      appSchema,
                      firestore: FirebaseFirestore.instance,
                    );

                    try {
                      String email = mailController.text;
                      String password = passwordController.text;
                      String firstName = firstnameController.text;
                      String lastName = lastnameController.text;
                      final createdAt = DateTime.now();

                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                      )
                          .then((authResult) async {
                        String uid = authResult.user!.uid;

                        await db.users
                            .create(
                          User(
                            id: uid,
                            firstName: firstName,
                            lastName: lastName,
                            email: email
                          ),
                        )
                            .then((onValue) async {
                          Navigator.pushNamed(
                            context,
                            HomeScreen.routeName,
                          );
                        });
                      });
                    } on FirebaseAuthException catch (e) {
                      print("FirebaseAuthException: ${e.code}");
                    } catch (e) {
                      print("Autre erreur: $e");
                    }
                  }
                },
                label: 'Je m’inscris',
                color: 'dark',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
