import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../PanierPage.dart';
import '../app_styles.dart';
import '../favorite.dart';
import '../home.dart';
import '../login.dart';
import '../profil.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      height: 104,
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
            icon: widget.currentIndex == 0
                ? SvgPicture.asset('assets/home_icon_selected.svg')
                : SvgPicture.asset('assets/home_icon_unselected.svg'),
          ),
          CustomNavigationBarItem(
            icon: widget.currentIndex == 1
                ? SvgPicture.asset('assets/cart_icon_selected.svg')
                : SvgPicture.asset('assets/cart_icon_unselected.svg'),
          ),
          CustomNavigationBarItem(
            icon: widget.currentIndex == 2
                ? SvgPicture.asset('assets/favorite_icon_selected.svg')
                : SvgPicture.asset('assets/favorite_icon_unselected.svg'),
          ),
          CustomNavigationBarItem(
            icon: widget.currentIndex == 3
                ? SvgPicture.asset('assets/account_icon_selected.svg')
                : SvgPicture.asset('assets/account_icon_unselected.svg'),
          ),
        ],
        currentIndex: widget.currentIndex,
        onTap: (int index) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _getPage(index)),
          );
        },
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
