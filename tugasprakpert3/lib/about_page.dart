import 'package:flutter/material.dart';
import 'package:tugasprakpert3/side_menu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
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
          child: SingleChildScrollView( // Make the content scrollable
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Tentang Aplikasi Ini',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    'Aplikasi ini dirancang untuk membantu pengguna mengelola tugas dengan efisien dan efektif. Jelajahi fitur-fitur yang tersedia dan tingkatkan produktivitas Anda.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Fitur Utama:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '• Manajemen Tugas\n'
                    '• Pengingat Tenggat Waktu\n'
                    '• Pelacakan Kemajuan\n'
                    '• Antarmuka yang Ramah Pengguna\n'
                    '• Keamanan dan Privasi Data\n',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Action for button (if needed)
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button color
                    foregroundColor: Colors.blueAccent, // Text color
                  ),
                  child: const Text(
                    'Jelajahi Fitur',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
