import 'package:flutter/material.dart';
import 'package:tugasprakpert3/side_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var namauser;

  void _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namauser = prefs.getString('username') ?? 'Guest';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _loadUsername();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const Sidemenu(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent.shade100, Colors.blue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20), // Space instead of image
                Text(
                  'Welcome, $namauser!',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Selamat datang di halaman utama aplikasi. Jelajahi fitur-fitur yang tersedia dan nikmati pengalaman yang mudah dan menyenangkan!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Kegunaan Aplikasi:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                _buildKegunaanList(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildKegunaanList() {
    final List<Map<String, dynamic>> kegunaan = [
      {'text': 'Mengelola tugas dengan efisien.', 'icon': Icons.check_circle_outline},
      {'text': 'Membantu mengingat tenggat waktu.', 'icon': Icons.access_alarm},
      {'text': 'Menyediakan pengingat untuk aktivitas penting.', 'icon': Icons.notifications},
      {'text': 'Meningkatkan produktivitas sehari-hari.', 'icon': Icons.trending_up},
      {'text': 'Menyediakan laporan kemajuan tugas.', 'icon': Icons.pie_chart},
    ];

    return Column(
      children: kegunaan.map((item) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(item['icon'] as IconData, color: Colors.blueAccent, size: 30),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    item['text']!,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
