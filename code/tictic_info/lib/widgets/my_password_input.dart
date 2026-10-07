import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';

class MyPasswordInput extends StatefulWidget {
  const MyPasswordInput({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<MyPasswordInput> createState() => _MyPasswordInputState();
}

class _MyPasswordInputState extends State<MyPasswordInput> {
  bool passwordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      obscureText: passwordNotVisible,
      decoration: InputDecoration(
        labelText: 'Mot de passe *',
        labelStyle: TextStyle(
          color: kBlack,
          fontSize: 24,
          fontFamily: 'Poppins',
        ),
        hintText: 'Ex: ***********',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        //icon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
        //prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              passwordNotVisible = !passwordNotVisible;
            });
          },
          icon: Icon(
            passwordNotVisible ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
      //validator: ,
    );
  }
}