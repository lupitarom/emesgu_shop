import 'package:enseguida_shop/presentation/pages/cart/cart.dart';
import 'package:enseguida_shop/presentation/pages/liked/liked.dart';
import 'package:enseguida_shop/presentation/pages/my_home_guest/salir.dart';
import 'package:enseguida_shop/presentation/pages/ropa/cargar_ropa.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomeGuest extends StatefulWidget {
  const MyHomeGuest({Key? key}) : super(key: key);

  @override
  State<MyHomeGuest> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomeGuest> {
  int _currentIndex = 0;

  final _pages = [const AllRopa(), const Liked(), const Cart(), const Logout()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFFe49fa4),
          selectedItemColor: const Color(0xFFedd298),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home), label: " Inicio"),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: "Favoritos",
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.shoppingCart), label: "   Carrito"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.signOutAlt), label: "   Salir"),
          ]),
    );
  }
}
