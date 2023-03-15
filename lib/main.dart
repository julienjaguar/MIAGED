import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projet_vetements_miage/PanierPage.dart';
import 'package:projet_vetements_miage/favorite.dart';
import 'package:projet_vetements_miage/paiement.dart';
import 'package:projet_vetements_miage/product.dart';
import 'package:projet_vetements_miage/profil.dart';
import 'package:provider/provider.dart';

import 'app_styles.dart';
import 'home.dart';



void main() {
  runApp(
    ChangeNotifierProvider<Panier>(
      create: (context) => Panier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _getPage(_currentIndex),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          height: 64,
          child: CustomNavigationBar(
            isFloating: true,
            borderRadius: const Radius.circular(40),
            selectedColor: kWhite,
            unSelectedColor: kGrey,
            backgroundColor: kYellow,
            strokeColor: const Color.fromARGB(0, 0, 0, 0),
            scaleFactor: 0.1,
            iconSize: 40,
            items: [
              CustomNavigationBarItem(
                icon: _currentIndex == 0
                    ? SvgPicture.asset('assets/home_icon_selected.svg')
                    : SvgPicture.asset('assets/home_icon_unselected.svg'),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 1
                    ? SvgPicture.asset('assets/cart_icon_selected.svg')
                    : SvgPicture.asset('assets/cart_icon_unselected.svg'),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 2
                    ? SvgPicture.asset('assets/favorite_icon_selected.svg')
                    : SvgPicture.asset('assets/favorite_icon_unselected.svg'),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 3
                    ? SvgPicture.asset('assets/account_icon_selected.svg')
                    : SvgPicture.asset('assets/account_icon_unselected.svg'),
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const PanierPage();
      case 2:
        return const FavoriteScreen();
      case 3:
        return const ProfilScreen();
      default:
        return const HomeScreen();
    }
  }
}
