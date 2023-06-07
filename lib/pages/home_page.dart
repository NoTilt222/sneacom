import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneacom/components/bottom_nav_bar.dart';
import 'package:sneacom/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const ShopPage(),

    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black,),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
            children: [DrawerHeader(child: Image.asset('assets/images/nikelogo.png',
              color: Colors.white,
              height: 100,
              width: 100,),
            ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),

              const Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('Home',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.info, color: Colors.white,),
                  title: Text('About',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.white,),
                  title: Text('Settings',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),],
          ),
            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text('Log out',
                  style: TextStyle(
                      color: Colors.white
                  ),),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index ) => navigateBottomBar(index)
      ),
    body: pages[_selectedIndex],
    );
  }
}
