import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  // Tambahkan parameter untuk callback ketika produk ditambahkan
  final Function(String, String, int) onProdukAdded;

  const ProdukForm({super.key, required this.onProdukAdded});

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHarga(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukController,
    );
  }

  _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukController,
    );
  }

  _textboxHarga() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga Produk"),
      controller: _hargaProdukController,
      keyboardType: TextInputType.number, // Pastikan input untuk harga hanya angka
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukController.text;
        String namaProduk = _namaProdukController.text;
        int hargaProduk = int.parse(_hargaProdukController.text);

        // Panggil callback untuk menambahkan produk ke list
        widget.onProdukAdded(kodeProduk, namaProduk, hargaProduk);

        // Kembali ke halaman sebelumnya (ProdukPage)
        Navigator.pop(context);
      },
      child: const Text('Simpan'),
    );
  }
}
