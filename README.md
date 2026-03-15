Nama: Dinda Aulia Rizky

NIM: 2409116076

Kelas: SI B'24

# Selalu Teh Catalogue App (UPGRADE)˚˖𓍢ִ໋🌷͙֒✧˚.🎀༘⋆

Aplikasi Selalu Teh merupakan aplikasi katalog menu minuman yang dibuat menggunakan framework Flutter. Aplikasi ini menampilkan daftar menu minuman dalam bentuk katalog yang berisi gambar, nama minuman, harga, dan level kemanisan.

Aplikasi ini telah terintegrasi dengan Supabase sebagai layanan backend untuk mengelola database menu minuman. Dengan adanya integrasi ini, aplikasi dapat melakukan pengolahan data seperti menambahkan menu baru, menampilkan daftar menu, mengedit data menu, serta menghapus menu dari database.

Selain itu, tampilan menu pada aplikasi ini sudah menggunakan gambar menu minuman yang diambil dari URL, sehingga tampilan katalog terlihat lebih nyata dan menarik dibandingkan sebelumnya yang menggunakan emoji. Dengan adanya gambar menu tersebut, pengguna dapat melihat visual minuman dengan lebih jelas.

Aplikasi ini juga dilengkapi dengan fitur light mode dan dark mode sehingga tampilan aplikasi dapat menyesuaikan dengan preferensi pengguna.

# ᰔ Tampilan UI

<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/f70ccb24134974da320d9c0ffebbfb4f21c07ffe/SS%20Readme/cover.png" width="400" height="700">
<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/homepage2.png" width="400" height="700">
<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/a15b0ff50669f62b96f88eb867e4fb80546376c5/SS%20Readme/dark.png" width="400" height="700">
<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/c48cac87217b83bf33343113b616a6abd03b311f/SS%20Readme/formpage.png" width="400" height="700">

# ᰔ Fitur Utama

Aplikasi ini berisi 5 fitur utama, yaitu Menambahkan data minuman baru, Menampilkan data minuman, Mengedit data minuman yang sudah ada, Menghapus data minuman, serta Mengatur mode tampilan

- Menambahkan data minuman baru (Create)

  Pengguna dapat menambahkan menu minuman baru dengan mengisi form yang tersedia, seperti nama minuman, harga, level manis, dan gambar dari menu yang tersedia. Data yang diinput akan langsung tampil pada halaman utama dengan meng-klik button _(+)_ di sudut kanan bawah.

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/button%20create.png" width="300" height="400">

  Mengisi data pada form yang tersedia

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/create.png" width="400" height="600">

  Gambar pertama dan kedua menampilkan halaman Tambah Menu dengan contoh proses validasi pada form input. Aplikasi akan menampilkan pesan kesalahan apabila data yang dimasukkan tidak sesuai atau masih kosong, seperti nama harus berupa huruf, harga harus berupa angka, serta setiap kolom wajib diisi. Hal ini bertujuan untuk memastikan data yang dimasukkan pengguna sudah benar sebelum disimpan.

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/error%20handling%20formpage.png" width="400" height="600">
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/error%20handling%20(2).png" width="450" height="600">

  Jika Create berhasil, maka akan muncul pop up untuk memberi feedback ke pengguna setelah melakukan aksi.
 
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/create%20berhasil.png">

  Dapat dilihat pada dokumentasi dibawah ini, bahwa data minuman dengan nama Creamy Berry berhasil ditambahkan ke database

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/output%20create.png" width="400" height="600">
  
- Menampilkan data minuman (Read)

  Aplikasi menampilkan seluruh daftar menu minuman dalam bentuk grid/katalog pada halaman utama lengkap dengan informasi detailnya.

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/homepage2.png" width="300" height="400">

- Mengedit data minuman yang sudah ada (Update)

  Pengguna dapat mengubah data minuman yang sudah ada melalui button _edit_. Data lama akan ditampilkan kembali di form, lalu dapat diperbarui sesuai kebutuhan.

  Pada contoh gambar dibawah ini merupakan data sebelum diupdate. Harga awal adalah Rp12.000, namun kita akan melakukan update harga menjadi Rp18.000

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/b0fbb31b1ca826f009fed27067d4e3876100f60f/SS%20Readme/edit%20red%20velvet.png" width="380" height="500" >

  Setelah data harga di update:
  
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/update%20berhasil.png" width="300" height="400">

- Menghapus data minuman (Delete)

  Pengguna dapat menghapus menu minuman dari daftar dengan menekan button _delete_, lalu muncul pop up untuk mengkonfirmasi jika ingin benar-benar menghapus menu sehingga data tersebut tidak lagi ditampilkan.

   <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/50743f5ca1d1d68505895934e53a192870d3b492/SS%20Readme/konfirmasi%20delete.png" width="300" height="400">

- Fitur Dark Mode dan Light Mode (Nilai Tambah)

  Pada aplikasi ini terdapat fitur untuk mengubah tampilan tema menjadi light mode atau dark mode. Pengguna dapat mengganti tema dengan menekan ikon yang berada di sudut kanan atas pada halaman aplikasi. Ketika ikon tersebut ditekan, tampilan aplikasi akan berubah dari mode terang (light) menjadi mode gelap (dark), atau sebaliknya. Fitur ini memudahkan pengguna menyesuaikan tampilan aplikasi sesuai dengan kenyamanan saat digunakan.

  icon saat ingin berpindah ke dark mode

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/7d37947580982910a82c50872986c90ac1a77586/SS%20Readme/ke%20dark%20mode%20(2).png" width="300" height="700">
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/a15b0ff50669f62b96f88eb867e4fb80546376c5/SS%20Readme/dark.png" width="380" height="500">

  Icon saat ingin berpindah ke light mode

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/ke%20light%20mode.png" width="300" height="700">
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/homepage2.png" width="300" height="400">
  

# 📁 Struktur Folder Project
```bash
lib/
├── config/
│   └── supabase_config.dart   # Konfigurasi Supabase
├── models/
│   └── drinks.dart            # Model data minuman
├── pages/
│   ├── cover_page.dart        # Halaman cover / splash
│   ├── form_page.dart         # Halaman form tambah/edit menu
│   └── home_page.dart         # Halaman utama aplikasi
├── services/
│   └── drink_service.dart     # Service untuk operasi data minuman
└── main.dart                  # Entry point aplikasi
```

Project dibagi menjadi 4 package utama:
### 1. config

   Folder ini berisi file konfigurasi yang bernama supabase_config.dart yang digunakan untuk menghubungkan aplikasi Flutter dengan database Supabase. Di dalamnya terdapat pengaturan seperti URL Supabase dan API Key yang diambil dari file .env, lalu digunakan untuk menginisialisasi koneksi database agar aplikasi bisa mengakses data.

### 2. models

  Folder ini berisi model data yang digunakan dalam aplikasi. File drinks.dart mendefinisikan struktur data untuk menu minuman. Model ini berisi atribut seperti id, name, price, sugarLevel, dan imageUrl. Model ini juga memiliki fungsi untuk mengubah data dari format JSON ke objek Dart dan sebaliknya agar mudah digunakan dalam aplikasi.
    
### 3. pages
    
   Folder ini berisi halaman tampilan (UI) yang dilihat dan digunakan oleh pengguna. terdapat beberapa file sebagai berikut:
    
   - cover_page.dart
   
     Halaman awal aplikasi yang menampilkan cover atau tampilan pembuka aplikasi “Selalu Teh”. Halaman ini berisi logo, nama aplikasi, dan tombol untuk masuk ke halaman utama.
    
   - form_page.dart
    
      Halaman yang digunakan untuk menambah atau mengedit data menu minuman. Di halaman ini terdapat form input seperti nama minuman, harga, level manis, dan link gambar.
    
   - home_page.dart

     Halaman utama aplikasi yang menampilkan daftar menu minuman yang diambil dari database Supabase. Pada halaman ini pengguna dapat melihat menu, mengedit data, menghapus data, dan menambah menu baru.

### 4. services

   Folder ini berisi logika pengolahan data atau komunikasi dengan database. File drink_service.dart berfungsi untuk menangani operasi CRUD (Create, Read, Update, Delete) terhadap data minuman di database Supabase. Dengan adanya service ini, pengambilan dan pengolahan data menjadi lebih terstruktur dan tidak langsung ditulis di halaman UI.

### 5. main.dart

   File ini merupakan entry point atau titik awal saat aplikasi Flutter dijalankan. Di file ini dilakukan inisialisasi Supabase, pengaturan tema aplikasi (light mode dan dark mode), serta menjalankan aplikasi dengan memanggil halaman awal yaitu CoverPage.
   
# 📌 Widget yang Digunakan

Widget adalah komponen dasar dalam Flutter yang digunakan untuk membangun tampilan dan struktur aplikasi. Berikut adalah beberapa widget yang digunakan di dalam membuat aplikasi ini:

## 🔹 Struktur Dasar

| Widget | Kegunaan |
|--------|----------|
| `MaterialApp` | Widget utama yang menjalankan aplikasi Flutter serta mengatur tema. |
| `Scaffold` | Kerangka dasar halaman seperti AppBar, body, dan FloatingActionButton. |
| `AppBar` | Menampilkan judul aplikasi dan tombol aksi. |
| `SafeArea` | Mengatur agar konten tidak tertutup sistem UI perangkat. |

---

## 🔹 Layout

| Widget | Kegunaan |
|--------|----------|
| `Column` | Menyusun widget secara vertikal dari atas ke bawah. |
| `Row` | Menyusun widget secara horizontal dari kiri ke kanan. |
| `Center` | Memposisikan widget agar berada di tengah layar. |
| `Padding` | Memberikan jarak di sekitar widget. |
| `SizedBox` | Memberikan jarak atau ukuran tetap antar widget. |
| `Container` | Widget serbaguna untuk mengatur ukuran, warna, padding, dan dekorasi. |
| `GridView.builder` | Menampilkan data menu minuman dalam bentuk grid secara dinamis dari database. |
| `Spacer` | Memberikan ruang kosong fleksibel di dalam Row atau Column. |
| `ListView` | Menampilkan daftar widget secara vertikal yang bisa di-scroll (digunakan pada halaman form). |

---

## 🔹 Input & Form

| Widget | Kegunaan |
|--------|----------|
| `Form` | Mengelompokkan beberapa input menjadi satu kesatuan form. |
| `GlobalKey<FormState>` | Digunakan untuk mengontrol dan melakukan validasi pada form. |
| `TextFormField` | Input teks dengan fitur validasi untuk nama, harga, dan link gambar. |
| `DropdownButtonFormField` | Input pilihan dropdown untuk memilih level manis minuman. |
| `TextEditingController` | Mengontrol dan mengambil nilai dari input field. |
| `ElevatedButton` | Tombol utama untuk menyimpan atau memperbarui data menu. |

---

## 🔹 Navigasi

| Widget / Method | Kegunaan |
|-----------------|----------|
| `Navigator.push` | Berpindah dari satu halaman ke halaman lain (misalnya dari Home ke FormPage). |
| `Navigator.pop` | Kembali ke halaman sebelumnya setelah data berhasil disimpan atau dibatalkan. |
| `MaterialPageRoute` | Mengatur transisi halaman dengan gaya Material Design. |

---

## 🔹 Tombol & Aksi

| Widget | Kegunaan |
|--------|----------|
| `FloatingActionButton` | Tombol utama untuk menambahkan menu minuman baru. |
| `IconButton` | Tombol berbentuk ikon yang digunakan untuk edit dan delete data. |
| `Icon` | Menampilkan ikon visual seperti tambah, edit, delete, atau lokasi. |
| `ElevatedButton` | Tombol untuk menjalankan aksi seperti masuk ke halaman menu atau menyimpan data. |
| `TextButton` | Tombol sederhana yang digunakan pada dialog konfirmasi hapus. |

---

## 🔹 Styling

| Widget / Class | Kegunaan |
|----------------|----------|
| `BoxDecoration` | Mengatur dekorasi pada Container seperti warna dan bayangan. |
| `BorderRadius` | Membuat sudut widget menjadi melengkung. |
| `BoxShadow` | Memberikan efek bayangan pada card menu minuman. |
| `TextStyle` | Mengatur gaya teks seperti ukuran, warna, dan ketebalan. |
| `ThemeData` | Mengatur tema keseluruhan aplikasi seperti warna utama dan mode terang/gelap. |
| `ClipRRect` | Memotong gambar agar memiliki sudut melengkung. |
| `ClipOval` | Memotong gambar menjadi bentuk lingkaran (digunakan pada logo cover). |

---

## 🔹 Widget Tambahan (Digunakan di Project)

| Widget | Kegunaan |
|--------|----------|
| `FutureBuilder` | Menampilkan data dari Supabase secara asynchronous. |
| `CircularProgressIndicator` | Menampilkan loading saat data sedang diambil dari database. |
| `AlertDialog` | Menampilkan dialog konfirmasi saat pengguna ingin menghapus menu. |
| `SnackBar` | Menampilkan notifikasi setelah data berhasil ditambah, diubah, atau terjadi error. |
| `Image.network` | Menampilkan gambar menu minuman dari URL. |
| `Image.asset` | Menampilkan gambar logo dari folder assets. |

---

# ᰔ Navigasi Halaman (Multi Page Navigation)

Aplikasi Selalu Teh menggunakan sistem navigasi untuk berpindah dari satu halaman ke halaman lainnya. Navigasi ini memungkinkan pengguna untuk membuka halaman berbeda seperti halaman utama, halaman form tambah data, maupun halaman edit data. Perpindahan antar halaman dilakukan menggunakan Navigator dan MaterialPageRoute yang merupakan bagian dari sistem navigasi di Flutter.

### 1. Navigasi dari CoverPage ke HomePage

   Navigator.push() digunakan untuk berpindah dari halaman pembuka (CoverPage) ke halaman utama (HomePage) saat tombol “Lihat Menu” ditekan.

   <img width="434" height="143" alt="image" src="https://github.com/user-attachments/assets/181bfeaf-b927-4c2d-9063-960f15622004" />

### 2. Navigasi dari HomePage ke FormPage (Tambah Data)

   Navigator.push() digunakan untuk membuka halaman FormPage ketika tombol tambah (+) ditekan, sehingga pengguna dapat mengisi data minuman baru.

   <img width="585" height="111" alt="image" src="https://github.com/user-attachments/assets/6099ba88-159f-4ceb-8682-c981aa843db1" />

### 3. Navigasi untuk Edit Data

   Navigator.push() juga digunakan untuk membuka FormPage dalam mode edit dengan membawa data minuman yang dipilih agar bisa diperbarui.

   <img width="490" height="149" alt="image" src="https://github.com/user-attachments/assets/d6b79caa-5392-41c2-9df1-74887af29dff" />

# ᰔ SUPABASE 

### 1 Tampilan database

  Pada gambar pertama ditampilkan tampilan database pada Supabase yang berisi data menu minuman yang digunakan pada aplikasi Selalu Teh. Di dalam tabel tersebut terdapat beberapa data menu seperti Red Velvet, Lemon Green Tea, Teh Susu, dan Strawberry Cheese Cake. Setiap data menu memiliki beberapa informasi pendukung seperti id, name, price, sugar_level, image_url, serta created_at yang digunakan untuk menyimpan detail dari masing-masing menu.

  Pada tahap awal pengembangan aplikasi, data menu yang ditampilkan pada aplikasi masih menggunakan list lokal yang dituliskan langsung di dalam kode program. Cara ini membuat data bersifat statis sehingga setiap perubahan data harus dilakukan dengan mengubah kode aplikasi terlebih dahulu. Setelah dilakukan integrasi dengan Supabase, data menu kini disimpan di dalam database online, sehingga aplikasi dapat mengambil data secara langsung dari database. Dengan demikian, proses pengelolaan data menjadi lebih fleksibel karena data dapat ditambahkan, diperbarui, maupun dihapus melalui database tanpa perlu melakukan perubahan pada kode program aplikasi.

  <img alt="image" src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/372af771fb765658f718aa7d9932d06b93d6d25d/SS%20Readme/Database.png" />

### 2 Tampilan table editor

   Pada gambar kedua ditampilkan struktur tabel menus melalui fitur Table Editor pada Supabase. Tabel ini digunakan sebagai tempat penyimpanan data menu yang akan digunakan oleh aplikasi Selalu Teh. Di dalam tabel tersebut terdapat beberapa kolom yang berfungsi untuk menyimpan informasi terkait menu minuman. Kolom id dengan tipe data int8 digunakan sebagai identitas unik untuk setiap menu. Kolom name bertipe text digunakan untuk menyimpan nama minuman. Kolom price dengan tipe data int4 digunakan untuk menyimpan harga dari menu tersebut. Selanjutnya terdapat kolom sugar_level bertipe text yang digunakan untuk menyimpan informasi tingkat gula pada minuman.

  Selain itu, terdapat kolom image_url bertipe text yang digunakan untuk menyimpan alamat atau tautan gambar menu sehingga gambar dapat ditampilkan pada aplikasi. Kolom terakhir yaitu created_at dengan tipe data timestamp yang berfungsi untuk mencatat waktu ketika data tersebut dibuat atau ditambahkan ke dalam database. Dengan adanya struktur tabel ini, data yang disimpan menjadi lebih terorganisir dan mudah untuk diakses oleh aplikasi melalui integrasi Supabase. Hal ini membuat aplikasi Selalu Teh dapat menampilkan data menu secara dinamis karena data diambil langsung dari database yang telah dibuat.

  <img alt="image" src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/372af771fb765658f718aa7d9932d06b93d6d25d/SS%20Readme/table%20editor.png" />

























  
