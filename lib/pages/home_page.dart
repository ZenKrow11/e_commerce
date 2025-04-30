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
          backgroundColor: Colors.grey[800],
          child: Column(
            children: [
              // logo
            DrawerHeader(
              child: Image.asset('lib/images/nike.png'),
          ),
              Padding(padding: const EdgeInsets.all(10.0),
                child: Divider(
                  color: Colors.grey[600],
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.grey[400]),
                  title: Text('Home', style: TextStyle(color: Colors.grey[400])),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.shopping_basket, color: Colors.grey[400]),
                  title: Text('Basket', style: TextStyle(color: Colors.grey[400])),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.grey[400]),
                  title: Text('Log Out', style: TextStyle(color: Colors.grey[400])),
                ),
              ),
            ]
        ),
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
