import 'package:flutter/material.dart';

import 'mainscreen.dart';
import 'sellerscreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Profile")),
        body: const Center(child: Text("Profile")),
        drawer: Drawer(
            child: ListView(children: [
          UserAccountsDrawerHeader(
            accountEmail: const Text(
                'test@homestayraya.com'), // keep blank text because email is required
            accountName: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Icon(
                      Icons.check,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('user'),
                    Text('@User'),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Buyer'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => const MainScreen()));
            },
          ),
          ListTile(
            title: const Text('Seller'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => const SellerScreen()));
            },
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => const ProfileScreen()));
            },
          ),
        ])));
  }
}
