import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Actions rapides')),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Réglages'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Réglages'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Réglages'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Réglages'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Réglages'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Réglages'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TextButton(onPressed: () {
            Scaffold.of(context).openDrawer();
          }, child: Text('Ouvrir'))
        ],
      ),
    );
  }
}
