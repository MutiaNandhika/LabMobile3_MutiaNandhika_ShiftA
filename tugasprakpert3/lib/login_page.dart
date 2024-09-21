import 'package:flutter/material.dart';
import 'package:tugasprakpert3/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _saveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', _usernameController.text);
    prefs.setString('email', _emailController.text);
  }

  Widget _showInput(TextEditingController controller, String placeholder, bool isPassword) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }

  _showDialog(String message, Widget nextPage) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
          actions: [
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => nextPage),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade50, // Lighter blue background
        ),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Selamat Datang!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent, // Adjusted text color
                ),
              ),
              const SizedBox(height: 20),
              _showInput(_emailController, 'Masukkan Email', false),
              const SizedBox(height: 10),
              _showInput(_usernameController, 'Masukkan Username', false),
              const SizedBox(height: 10),
              _showInput(_passwordController, 'Masukkan Password', true),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.blueAccent, // Button color
                  foregroundColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Login', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  if (_emailController.text == 'admin@gmail.com' &&
                      _usernameController.text == 'admin' &&
                      _passwordController.text == 'admin') {
                    _saveUsername();
                    _showDialog('Anda berhasil login', const Homepage());
                  } else {
                    _showDialog('Email, Username, atau Password salah', const Loginpage());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
