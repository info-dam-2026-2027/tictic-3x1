
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import 'package:dto/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic_info/screens/welcome_screen.dart';
import 'package:tictic_info/widgets/product_form.dart';

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
  final odm = FirestoreODM(appSchema, firestore: FirebaseFirestore.instance);
  final GlobalKey<ScaffoldState> scaffoldKey =
  GlobalKey<ScaffoldState>();

  late final Stream<List<Product>> _productsStream;

  @override
  void initState() {
    super.initState();
    _productsStream = odm.products.stream;
  }

  final _itemsTitle = [
    'Total à payer',
    'Total à recevoir',
    'Total',
  ];

  final _itemsNumber = ['80€', '150€', '290€'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text('Actions rapides')),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Réglages'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // HEADER
              Padding(
                padding: const EdgeInsets.all(kPaddingM),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
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
                        padding: const EdgeInsets.all(2),
                        child: IconButton(
                          onPressed: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          icon: const Icon(Icons.menu),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          WelcomeScreen.routeName,
                        );
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
                backgroundImage:
                const AssetImage('assets/img/dog.png'),
              ),

              SizedBox(height: kSpacer),

              Padding(
                padding: const EdgeInsets.all(kPaddingM),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hey, Dylan !',
                    style: kHomeWelcomeMessage,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPaddingM,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'On vous doit de l’argent !',
                    style: kHomeWelcomeSubMessage,
                  ),
                ),
              ),

              SizedBox(height: kSpacer),

              // CARTES DES MONTANTS
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
                  padding: const EdgeInsets.symmetric(
                    vertical: kPaddingXL,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _itemsTitle.length,
                    itemBuilder: (context, index) {
                      return CardSlider(
                        title: _itemsTitle[index],
                        number: _itemsNumber[index],
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: kSpacer),

              // NOUVEAU : FORMULAIRE PRODUIT
              const ProductForm(),

              SizedBox(height: kSpacer),

              StreamBuilder<List<Product>>(
                stream: _productsStream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Erreur de chargement');
                  }

                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }

                  final products = snapshot.data!;

                  if (products.isEmpty) {
                    return const Text('Aucun produit');
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];

                      return ListTile(
                        leading: const Icon(Icons.shopping_bag),
                        title: Text(product.name),
                        subtitle: Text(product.description),
                        trailing: Text(
                          '${(product.priceCents / 100).toStringAsFixed(2)} €',
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
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
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPaddingM,
      ),
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
              Text(title, style: kHomeBoxText),
              const SizedBox(height: 4),
              Text(number, style: kHomeBoxNumber),
            ],
          ),
        ),
      ),
    );
  }
}
