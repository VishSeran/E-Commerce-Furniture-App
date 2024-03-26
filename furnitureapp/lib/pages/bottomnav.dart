import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:furnitureapp/pages/order.dart';
import 'package:furnitureapp/pages/profile.dart';
import 'package:furnitureapp/pages/wallet.dart';
import 'package:furnitureapp/pages/home.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabIntdex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = Home();
    profile = Profile();
    order = Order();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
          setState(() {
            currentTabIntdex = index;
          });
          },

          items:
      [Icon(Icons.home_outlined, color: Colors.white,),
        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
        Icon(Icons.wallet_outlined, color: Colors.white,),
        Icon(Icons.person_2_outlined, color: Colors.white,)

      ]),
      body: pages[currentTabIntdex],
    );
  }
}
