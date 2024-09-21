import 'package:flutter/material.dart';
import 'package:tugasprakpert3/about_page.dart';
import 'package:tugasprakpert3/home_page.dart';
import 'package:tugasprakpert3/produk_page.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent.shade100, Colors.blue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent, // Transparent header
              ),
              child: Text(
                'Sidemenu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            _buildListTile(context, Icons.home, 'Home', const Homepage()),
            _buildListTile(context, Icons.info, 'About', const AboutPage()),
            _buildListTile(context, Icons.list, 'List Produk', const ProdukPage()),
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(BuildContext context, IconData icon, String title, Widget page) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
