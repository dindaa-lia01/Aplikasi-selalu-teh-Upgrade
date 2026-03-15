Nama: Dinda Aulia Rizky

NIM: 2409116076

Kelas: SI B'24

# Selalu Teh Catalogue App ˚˖𓍢ִ໋🌷͙֒✧˚.🎀༘⋆

Selalu Teh adalah aplikasi mobile sederhana berbasis Flutter yang dibuat untuk membantu pengelolaan data menu minuman pada toko “Selalu Teh” yang berlokasi di Samarinda, Kalimantan Timur.

Aplikasi ini dirancang sebagai sistem manajemen menu yang memungkinkan pengguna untuk menambahkan, melihat, mengubah, dan menghapus data minuman dengan mudah melalui tampilan yang sederhana dan interaktif. Setiap menu minuman memiliki informasi berupa:

- Nama minuman

- Harga

- Level kemanisan

- Icon/emoji sebagai representasi visual

Tampilan menu disajikan dalam bentuk grid agar terlihat seperti katalog produk, sehingga lebih menarik dan mudah dibaca. Aplikasi ini juga menerapkan konsep Object-Oriented Programming (OOP) dengan menggunakan model data serta pengelolaan state menggunakan StatefulWidget.

# ᰔ Tampilan UI

<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/f70ccb24134974da320d9c0ffebbfb4f21c07ffe/SS%20Readme/cover.png" width="400" height="700">
<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/homepage2.png" width="400" height="700">
<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/45de71121b8044013f5d59f211e314ccd4914b35/SS%20Readme/dark_mode.png" width="400" height="700">
<img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/c48cac87217b83bf33343113b616a6abd03b311f/SS%20Readme/formpage.png" width="400" height="700">

# ᰔ Fitur Utama

Aplikasi ini berisi 4 fitur utama, yaitu Menambahkan data minuman baru, Menampilkan data minuman, Mengedit data minuman yang sudah ada, Menghapus data minuman

- Menambahkan data minuman baru (Create)

  Pengguna dapat menambahkan menu minuman baru dengan mengisi form yang tersedia, seperti nama minuman, harga, level manis, dan ikon. Data yang diinput akan langsung tampil pada halaman utama dengan meng-klik button _(+)_ di sudut kanan bawah.

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/button%20create.png" width="300" height="400">

  Melakukan create pada form yang tersedia

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/create.png" width="400" height="600">

  Gambar pertama dan kedua menampilkan halaman Tambah Menu dengan contoh proses validasi pada form input. Aplikasi akan menampilkan pesan kesalahan apabila data yang dimasukkan tidak sesuai atau masih kosong, seperti nama harus berupa huruf, harga harus berupa angka, serta setiap kolom wajib diisi. Hal ini bertujuan untuk memastikan data yang dimasukkan pengguna sudah benar sebelum disimpan.

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/error%20handling%20formpage.png" width="400" height="600">
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/error%20handling%20(2).png" width="400" height="600">

  Jika Create berhasil, maka akan muncul pop up untuk memberi feedback ke pengguna setelah melakukan aksi.
 
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/create%20berhasil.png">

  Dapat dilihat pada dokumentasi dibawah ini, bahwa data minuman dengan nama Creamy Berry berhasil ditambahkan ke database

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/e85de5bbf59f8a253acf1f148e5322022b6527c0/SS%20Readme/output%20create.png" width="400" height="600">
  
- Menampilkan data minuman (Read)

  Aplikasi menampilkan seluruh daftar menu minuman dalam bentuk grid/katalog pada halaman utama lengkap dengan informasi detailnya.

  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/homepage2.png" width="300" height="400">

- Mengedit data minuman yang sudah ada (Update)

  Pengguna dapat mengubah data minuman yang sudah ada melalui button _edit_. Data lama akan ditampilkan kembali di form, lalu dapat diperbarui sesuai kebutuhan.

  Sebelum data diupdate, harga awal adalah Rp12.000, namun kita akan melakukan update harga menjadi Rp18.000

  <img width="400" height="700" src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/b0fbb31b1ca826f009fed27067d4e3876100f60f/SS%20Readme/edit%20red%20velvet.png">

  Setelah data harga di update:
  
  <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/571b69759b2224069da0f0a41883b7b2933a58eb/SS%20Readme/update%20berhasil.png" width="300" height="400">

- Menghapus data minuman (Delete)

  Pengguna dapat menghapus menu minuman dari daftar dengan menekan button _delete_, lalu mengkonfirmasi jika ingin benar-benar menghapus sehingga data tersebut tidak lagi ditampilkan.

   <img src="https://github.com/dindaa-lia01/Aplikasi-selalu-teh-Upgrade/blob/50743f5ca1d1d68505895934e53a192870d3b492/SS%20Readme/konfirmasi%20delete.png" width="300" height="400">
  

# 📁 Struktur Folder Project
```bash
lib/
├── models/
│   └── drinks.dart        # Model data Drink
├── pages/
│   ├── cover_page.dart    # Halaman cover / splash
│   ├── form_page.dart     # Halaman form input/edit
│   └── home_page.dart     # Halaman utama
└── main.dart              # Entry point aplikasi
```

Project dibagi menjadi dua package utama:
1. Models

   Berisi file _drink.dart_ yang digunakan untuk membuat model data minuman. Fungsinya: Menyimpan data minuman dalam bentuk object, digunakan untuk menampung data pada List di HomePage.

2. Pages
   - CoverPage

     CoverPage adalah halaman pembuka aplikasi. Di halaman ini ditampilkan logo, nama toko, dan tombol untuk masuk ke aplikasi. Ketika tombol ditekan, pengguna akan berpindah ke HomePage menggunakan Navigator.push. Halaman ini menggunakan konsep StatelessWidget karena tampilannya tidak berubah-ubah, serta menerapkan navigasi antar halaman (Multi Page Navigation).

   - HomePage
    
     HomePage merupakan halaman utama yang menampilkan daftar minuman. Di halaman ini, data disimpan dalam bentuk List dan dikelola secara langsung. Jika ada perubahan data, tampilan akan diperbarui menggunakan setState.

     HomePage memiliki fitur lengkap seperti Create (menambah data melalui FloatingActionButton), Read (menampilkan data menggunakan GridView.builder), Update (mengedit data melalui tombol edit), dan Delete (menghapus data melalui tombol delete). Halaman ini menggunakan StatefulWidget karena datanya bisa berubah-ubah, serta menggunakan Navigator.push dan Navigator.pop untuk berpindah halaman.

   - FormPage

     FormPage adalah halaman yang digunakan untuk menambah atau mengedit data minuman. Halaman ini menggunakan Form dan TextFormField untuk menerima input dari pengguna. Setiap input akan divalidasi agar tidak boleh kosong. Jika halaman dibuka dalam mode edit, maka field akan otomatis terisi dengan data sebelumnya.

     FormPage menggunakan GlobalKey untuk mengontrol form, TextEditingController untuk mengatur isi input, serta Navigator.pop(context, drink) untuk mengirim kembali data yang sudah diisi ke halaman sebelumnya.

- main.dart

  File main.dart merupakan titik awal dari aplikasi. File ini bertugas menjalankan aplikasi menggunakan runApp(), mengatur tema (theme) aplikasi, serta menentukan halaman pertama yang akan ditampilkan, yaitu CoverPage. Jadi, bisa dibilang main.dart adalah pusat awal saat aplikasi mulai dijalankan.

# 📌 Widget yang Digunakan

Widget adalah komponen dasar dalam Flutter yang digunakan untuk membangun tampilan dan struktur aplikasi.

## 🔹 Struktur Dasar

| Widget | Kegunaan |
|--------|----------|
| `MaterialApp` | Widget utama untuk menjalankan aplikasi dan mengatur tema serta halaman awal. |
| `Scaffold` | Kerangka dasar halaman yang menyediakan AppBar, body, dan FloatingActionButton. |
| `AppBar` | Menampilkan judul dan navigasi di bagian atas halaman. |
| `SafeArea` | Mengatur agar konten tidak tertutup oleh notch atau sistem UI perangkat. |

---

## 🔹 Layout

| Widget | Kegunaan |
|--------|----------|
| `Column` | Menyusun widget secara vertikal (atas ke bawah). |
| `Row` | Menyusun widget secara horizontal (kiri ke kanan). |
| `Center` | Memposisikan widget agar berada di tengah. |
| `Padding` | Memberikan jarak di sekitar widget. |
| `SizedBox` | Memberikan jarak atau ukuran tetap pada widget. |
| `Container` | Widget serbaguna untuk mengatur ukuran, warna, dan dekorasi. |
| `GridView.builder` | Menampilkan data dalam bentuk grid/katalog secara dinamis. |
| `Spacer` | Memberikan ruang kosong fleksibel di dalam Column atau Row. |

---

## 🔹 Input & Form

| Widget | Kegunaan |
|--------|----------|
| `Form` | Mengelompokkan beberapa field input menjadi satu kesatuan form. |
| `GlobalKey<FormState>` | Digunakan untuk mengontrol dan memvalidasi form. |
| `TextFormField` | Input teks dengan fitur validasi. |
| `TextEditingController` | Mengontrol dan mengambil nilai dari input field. |
| `ElevatedButton` | Tombol utama untuk menyimpan atau memperbarui data. |

---

## 🔹 Navigasi

| Widget / Method | Kegunaan |
|-----------------|----------|
| `Navigator.push` | Berpindah ke halaman baru. |
| `Navigator.pop` | Kembali ke halaman sebelumnya atau mengirim data kembali. |
| `MaterialPageRoute` | Mengatur transisi halaman dengan gaya Material Design. |

---

## 🔹 Tombol & Aksi

| Widget | Kegunaan |
|--------|----------|
| `FloatingActionButton` | Tombol utama untuk menambahkan data (Create). |
| `IconButton` | Tombol berbentuk ikon untuk edit dan delete. |
| `Icon` | Menampilkan ikon visual pada tombol atau tampilan. |

---

## 🔹 Styling

| Widget / Class | Kegunaan |
|----------------|----------|
| `BoxDecoration` | Mengatur dekorasi seperti warna dan bayangan pada Container. |
| `BorderRadius` | Membuat sudut widget menjadi melengkung. |
| `BoxShadow` | Memberikan efek bayangan pada widget. |
| `TextStyle` | Mengatur gaya teks seperti ukuran dan ketebalan. |
| `ThemeData` | Mengatur tema keseluruhan aplikasi seperti warna utama. |

---

# ᰔ Navigasi Halaman (Multi Page Navigation)

Aplikasi Selalu Teh menggunakan sistem navigasi untuk berpindah dari satu halaman ke halaman lainnya. Navigasi ini memungkinkan pengguna untuk membuka halaman berbeda seperti halaman utama, halaman form tambah data, maupun halaman edit data. Perpindahan antar halaman dilakukan menggunakan Navigator dan MaterialPageRoute yang merupakan bagian dari sistem navigasi di Flutter.

1. Navigasi dari CoverPage ke HomePage

   Navigator.push() digunakan untuk berpindah dari halaman pembuka (CoverPage) ke halaman utama (HomePage) saat tombol “Lihat Menu” ditekan.

   <img width="434" height="143" alt="image" src="https://github.com/user-attachments/assets/181bfeaf-b927-4c2d-9063-960f15622004" />

2. Navigasi dari HomePage ke FormPage (Tambah Data)

   Navigator.push() digunakan untuk membuka halaman FormPage ketika tombol tambah (+) ditekan, sehingga pengguna dapat mengisi data minuman baru.

   <img width="585" height="111" alt="image" src="https://github.com/user-attachments/assets/6099ba88-159f-4ceb-8682-c981aa843db1" />

3. Navigasi untuk Edit Data

   Navigator.push() juga digunakan untuk membuka FormPage dalam mode edit dengan membawa data minuman yang dipilih agar bisa diperbarui.

   <img width="490" height="149" alt="image" src="https://github.com/user-attachments/assets/d6b79caa-5392-41c2-9df1-74887af29dff" />



























  
