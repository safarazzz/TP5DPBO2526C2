# Janji
Saya Faridchi Trianda Safaraz dengan NIM 2506827 mengerjakan Tugas Praktikum 5 pada Mata Kuliah Desain dan Pemrograman Berorientasi Objek (DPBO) untuk keberkahan-Nya maka saya tidak melakukan kecurangan seperti yang telah dispesifikasikan. Aamiin

# Struktur File
```
Main
├── PeopleData/
│   ├── src/
│   │   ├── Database.java
│   │   ├── People.java
│   │   ├── PeopleMenu.java
│   │   └── PeopleMenu.form
│   │
│   └── lib/
│       └── mysql-connector-j-26.7.0.jar
│
├── Dokumentasi/
│   └── penjelasantp5.mp4
│
├── db_people.sql
└── README.md
```

# Desain
Program terdiri atas __3__ class, yaitu __People__, __PeopleMenu__, dan __Database__. Berikut atribut dari masing-masing class:
- People:
  - ID
  - Nama
  - Tahun Lahir
  - Kategori
  - Jenis Kelamin
  - Posisi
- PeopleMenu:
  - database
- Database:
  - connection
  - statement

Data disimpan pada database `db_people` dengan satu tabel bernama `person` (kolom `id`, `nama`, `thnLahir`, `kategori`, `jenisKelamin`, `posisi`). Kolom `id` menjadi primary key.

# Penjelasan
Setelah program dijalankan, akan muncul sebuah jendela bertajuk __Data Pemain Futsal__ yang berisi:
- formulir input untuk `id`, `nama`, `kategori` (U12, U15, U17, U19, U20), `posisi` (Anchor, Pivot, Flank, Keeper), `tahun lahir`, dan `jenis kelamin`,
- tombol __Add__ untuk menambahkan pemain baru ketika form diisi
- tombol __Update__ untuk mengubah data pemain yang ada pada tabel
- tombol __Cancel__ untuk membatalkan input pada form
- tabel yang menampilkan daftar pemain dengan atribut-atribut tersebut.

User dapat mengisi form dengan lengkap dan menekan tombol __Add__ untuk menambahkan data pemain futsal ke dalam tabel. Selain itu, pengguna juga bisa memilih salah satu pemain pada tabel untuk menampilkan detailnya di form. Setelah data pemain muncul di form, pengguna dapat memperbarui atau menghapusnya menggunakan tombol __Update__ atau __Delete__ yang akan aktif setelah data dipilih.

Jika pengguna mengubah nilai pada form dan menekan tombol __Update__, maka data pemain yang dipilih akan diperbarui di tabel. Sementara itu, ketika tombol __Delete__ ditekan, akan muncul jendela konfirmasi penghapusan, dan data pemain akan dihapus apabila pengguna memilih tombol __Yes__.

Sebelum data ditambahkan atau diperbarui, form akan divalidasi terlebih dahulu: seluruh isian wajib terisi, `id` tidak boleh sama dengan data lain, `tahun lahir` harus berupa angka dan tidak melebihi tahun sekarang, serta harus sesuai dengan batas umur kategori yang dipilih.

Repo TP5 ini tidak beda jauh dengan Repo [TP4](https://github.com/safarazzz/TP4DPBO2526C2) sebelumnya, hanya saja menggunakan koneksi ke dalam database, menghapus array list dari kode sebelumnya dan program melihat penuh pada database, mengubah logika CRUD yang menghubung langsung pada database serta menambahkan beberapa notifikasi tambahan.

Notifikasi tambahannya yaitu :
1. Error jika masih ada kolom input yang kosong saat insert atau update (kolom yang kosong disebutkan pada pesan)
2. Error jika melakukan insert atau update menggunakan ID yang sudah ada
3. Error jika tahun lahir bukan angka
4. Error jika tahun lahir melebihi tahun sekarang
5. Error jika tahun lahir tidak sesuai batas kategori:

| Kategori | Tahun lahir minimal | Tahun lahir maksimal |
| -------- | ------------------- | -------------------- |
| U12      | 2013                | 2019                 |
| U15      | 2010                | tahun sekarang       |
| U17      | 2008                | tahun sekarang       |
| U19      | 2006                | tahun sekarang       |
| U20      | 2005                | tahun sekarang       |

# Cara Menjalankan
1. Jalankan MySQL (misalnya melalui XAMPP), lalu import file `db_people.sql` ke database `db_people`.
2. Buka folder `PeopleData` pada IntelliJ IDEA dan tambahkan file `.jar` MySQL Connector pada folder `lib` sebagai library project.
3. Pastikan koneksi pada `Database.java` sesuai dengan MySQL lokal (`localhost:3306`, user `root`, tanpa password).
4. Jalankan `PeopleMenu.java`.

# Dokumentasi
Penjelasan dan demo program dapat dilihat pada video berikut:

[https://youtu.be/cEsguHiI8Kg](https://youtu.be/cEsguHiI8Kg)