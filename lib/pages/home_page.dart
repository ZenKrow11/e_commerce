import 'package:e_commerce_tut/pages/basket_page.dart';
import 'package:e_commerce_tut/pages/profile_page.dart';
import 'package:e_commerce_tut/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  List<Widget> _pages = [
    ShopPage(),
    BasketPage(),
    ProfilePage(),
  ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ),
          ],
        ),
        //Drawer
        endDrawer: Drawer(

        ),

        //PageLayout
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
        },
          currentIndex: _selectedIndex,

          // Icons Colors
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,

          // Bottom Navigation Bar Items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: 'Basket',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: _pages[_selectedIndex],
      );
    }
  }
