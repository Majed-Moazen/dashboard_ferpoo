import 'package:flutter/material.dart';
import 'package:untitled/accept_product/pages/accept_product_screen.dart';
import 'package:untitled/add_product/pages/add_product_screen.dart';
import 'package:untitled/delete_product/pages/delete_product_screen.dart';
import '../../core/constant/constants.dart';
import 'side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pages = [];
  @override
  void initState() {
    super.initState();
    pages = [
      AddProductScreen(),
      DeleteProductScreen(),
      AcceptProductScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(
        title: const Text("welcome"),
        backgroundColor: secondaryColor,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: SizedBox(
        height: 120,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              backgroundColor: primaryColor,
              currentIndex: pageIndex,
              onTap: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              elevation: 10.0,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Home Page'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none_outlined),
                    label: 'Notification'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'Favorite'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
