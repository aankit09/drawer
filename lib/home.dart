import 'package:flutter/material.dart';
import 'package:navigation_drawer/screentwo.dart';

class Home extends StatefulWidget {
  static const String id = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy Testing'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1442290503/photo/cheerful-and-smiling-office-worker-with-video-call-headset-asian-customer-support-tech-of.jpg?s=1024x1024&w=is&k=20&c=hMNCHszqpUrNRzhcRVtbMS7kXsqy8FpvUvdrSUSJFLs='),
              ),
              accountName: Text('User Testing'),
              accountEmail: Text('Testing@gmail.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, Home.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.e_mobiledata),
              title: const Text('mobile data'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.mobile_friendly),
              title: const Text('Mobile'),
              onTap: () {
                Navigator.pushNamed(context, Home.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
