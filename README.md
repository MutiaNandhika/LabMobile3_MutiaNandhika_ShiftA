# Tugas Pertemuan 3

Nama: Mutia Nandhika  
NIM: H1D022078  
Shift Baru: A  

## Penjelasan Kode

## login_page.dart
### Screenshot
<img src="https://github.com/user-attachments/assets/5bb11594-2394-459d-8426-8fe5d0e1955e" alt="Screenshot" width="300"/>

- **Imports**:
  - `flutter/material.dart`: Untuk membangun UI.
  - `shared_preferences/shared_preferences.dart`: Menyimpan data pengguna secara lokal.
  - `tugasprakpert3/home_page.dart`: Mengimpor halaman utama setelah login berhasil.
  
- **Loginpage Class**: StatefulWidget untuk interaksi dinamis.

- **StatefulWidget**: Mengelola logika dan data dari halaman login.

- **TextEditingController**: Untuk mengelola input dari field email, username, dan password.

- **_saveUsername()**: Menyimpan username dan email di SharedPreferences.

- **_showInput()**: Membuat widget input untuk menerima data pengguna.

- **_showDialog()**: Menampilkan AlertDialog setelah login.

- **onPressed di ElevatedButton**: Memvalidasi input pengguna dan menampilkan pesan kesalahan atau keberhasilan.

- **UI Layout**: Menggunakan Scaffold dengan AppBar, Body, dan SingleChildScrollView.

## home_page.dart
### Screenshot
<img src="https://github.com/user-attachments/assets/e84646b5-25b1-4979-a221-403dafe1e806" alt="Screenshot" width="300"/>

- **Imports**: Sama seperti sebelumnya, dengan penekanan pada pengambilan data dari SharedPreferences.

- **Homepage Class**: Stateful untuk menampilkan username pengguna.

- **_loadUsername()**: Memuat username dari SharedPreferences.

- **UI Layout**: Menggunakan AppBar dan Drawer untuk navigasi, dengan konten yang dapat digulir.

## about_page.dart
### Screenshot
<img src="https://github.com/user-attachments/assets/029f2a14-a87b-4675-b189-5157ea24aee5" alt="Screenshot" width="300"/>

- **StatelessWidget**: Halaman ini hanya menampilkan informasi statis.

- **UI Layout**: Menggunakan Scaffold dengan AppBar dan konten dalam Container dengan gradien.

- **Konten Halaman**: Menampilkan deskripsi tentang aplikasi dan daftar fitur utama.

## side_menu.dart
### Screenshot
<img src="https://github.com/user-attachments/assets/2302e492-ae6e-4043-a75a-20a64938aa32" alt="Screenshot" width="300"/>

- **Drawer**: Menu samping untuk navigasi.

- **DrawerHeader**: Menampilkan judul "Sidemenu".

- **ListView**: Menyusun konten dalam drawer dengan pilihan navigasi.

## produk_form.dart
### Screenshot
<img src="https://github.com/user-attachments/assets/eeb4efeb-fbdf-4621-a29c-b10ac038bb5b" alt="Screenshot" width="300"/>

- **ProdukForm Widget**: StatefulWidget untuk input produk.

- **TextField Controllers**: Mengelola input untuk kode, nama, dan harga produk.

- **_tombolSimpan()**: Menyimpan produk dan kembali ke halaman sebelumnya.

## produk_detail.dart
### Screenshot
<img src="https://github.com/user-attachments/assets/714e0192-5232-410b-aea1-988175f057e4" alt="Screenshot" width="300"/>

- **ProdukDetail Widget**: StatelessWidget untuk menampilkan informasi detail produk.

- **UI Layout**: Menampilkan atribut produk dengan format yang jelas.

## produk_page.dart
### Screenshot
<img src="https://github.com/user-attachments/assets/fae23fc8-5e4a-45d4-932c-58e9b21f5cd4" alt="Screenshot" width="300"/>

- **ProdukPage Widget**: Halaman untuk menampilkan daftar produk.

- **State Management**: Menyimpan dan menambahkan produk ke dalam list.

- **Tampilan Halaman**: Menggunakan ListView.builder dan Card untuk menampilkan produk.

- **Tombol Tambah Produk**: FloatingActionButton untuk navigasi ke form produk baru.
