import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/screens/welcome_screen.dart';

import '../styles/colors.dart';
import '../styles/paddings.dart';
import '../styles/sizes.dart';
import '../styles/texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static final String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final _itemsTitle = ['Total à payer', 'Total à recevoir', 'Total'];
  final _itemsNumber = ['80€', '150€', '290€'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Actions rapides')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
            ListTile(leading: Icon(Icons.settings), title: Text('Réglages')),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kPaddingM),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        kBackButtonBorderRadius,
                      ),
                      border: Border.all(
                        width: kBorderInputWidth,
                        color: kLightGreen,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: IconButton(
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, WelcomeScreen.routeName);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 48,
                      height: 48,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kSpacer),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 6,
              backgroundImage: AssetImage('assets/img/dog.png'),
            ),
            SizedBox(height: kSpacer),
            Padding(
              padding: const EdgeInsets.all(kPaddingM),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Hey, Dylan !', style: kHomeWelcomeMessage),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingM),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'On vous doit de l’argent !',
                  style: kHomeWelcomeSubMessage,
                ),
              ),
            ),
            SizedBox(height: kSpacer),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/back2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kPaddingXL),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _itemsTitle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardSlider(title: _itemsTitle[index], number: _itemsNumber[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSlider extends StatelessWidget {
  final String title;
  final String number;

  const CardSlider({
    super.key,
    required this.title,
    required this.number
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingM),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.75,
        height: 80,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(kPaddingM),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kPaddingM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title, style: kHomeBoxText,),
              SizedBox(height: 4,),
              Text(number, style: kHomeBoxNumber,)
            ],
          ),
        ),
      ),
    );
  }
}
