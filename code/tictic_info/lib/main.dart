import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tictic_info/routes/router.dart';
import 'package:tictic_info/styles/colors.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTic Info',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kDarkGreen),
      ),
      routes: router,
      initialRoute: FirebaseAuth.instance.currentUser != null ? '/home' : '/' ,
    );
  }
}
