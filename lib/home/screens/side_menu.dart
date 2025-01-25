import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/home/screens/sign_in.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text("Hussam Abd Aljalil"),
                Text(
                  "hhhhh",
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ],
            ),
          ),
          DrawerListTile(
            title: "Auth",
            Icon: Icon(Icons.ac_unit),
            press: () {},
          ),
          DrawerListTile(
            title: "Delete User",
            Icon: Icon(Icons.delete),
            press: () {},
          ),
          const Divider(),
          DrawerListTile(
            title: "Profile",
            Icon: Icon(Icons.person),
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.Icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final Icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon,
      title: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
