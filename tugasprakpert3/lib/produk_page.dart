import 'package:flutter/material.dart';
import 'produk_form.dart';
import 'produk_detail.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  // List untuk menyimpan produk yang ditambahkan
  List<Map<String, dynamic>> produkList = [];

  // Fungsi untuk menambahkan produk ke dalam list
  void tambahProduk(String kodeProduk, String namaProduk, int hargaProduk) {
    setState(() {
      produkList.add({
        'kodeProduk': kodeProduk,
        'namaProduk': namaProduk,
        'hargaProduk': hargaProduk,
      });
    });
  }

  // Fungsi untuk navigasi ke halaman detail produk
  void _navigateToDetail(Map<String, dynamic> produk) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProdukDetail(
          kodeProduk: produk['kodeProduk'],
          namaProduk: produk['namaProduk'],
          hargaProduk: produk['hargaProduk'],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data Produk'),
        backgroundColor: Colors.blueAccent, // Warna app bar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent.shade100, Colors.blue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: produkList.length,
          itemBuilder: (context, index) {
            final produk = produkList[index];
            return Card(
              margin: const EdgeInsets.all(10),
              elevation: 4, // Memberikan efek bayangan
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Sudut melengkung
              ),
              child: ListTile(
                title: Text(
                  produk['namaProduk'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Harga: ${produk['hargaProduk']}"),
                onTap: () {
                  _navigateToDetail(produk); // Panggil fungsi untuk navigasi ke detail
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi ke form produk dan setelah selesai, tambahkan produk ke list
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProdukForm(
                onProdukAdded: tambahProduk, // Pass fungsi untuk menambahkan produk
              ),
            ),
          );
        },
        backgroundColor: Colors.blueAccent, // Warna tombol
        child: const Icon(Icons.add),
      ),
    );
  }
}
