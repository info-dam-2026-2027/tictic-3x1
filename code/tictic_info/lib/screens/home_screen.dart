import 'package:flutter/material.dart';

import '../widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static final String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawer(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Text('Ouvrir'),
          ),
        ],
      ),
    );
  }
}
