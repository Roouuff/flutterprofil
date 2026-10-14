Penjelasan Widget yang Digunakan dalam Aplikasi Profil Mahasiswa
1. Scaffold
Scaffold merupakan struktur dasar dalam aplikasi Flutter yang digunakan untuk menyusun tampilan halaman. Widget ini menyediakan area untuk AppBar, body, dan komponen lainnya agar tampilan aplikasi lebih terorganisasi.
2. AppBar
AppBar digunakan sebagai bilah bagian atas aplikasi yang menampilkan judul Profil Mahasiswa. Pada aplikasi ini, AppBar juga dilengkapi dengan ikon menu dan menu tambahan untuk membuat tampilan lebih menarik dan fungsional.
3. Column
Column berfungsi untuk menyusun beberapa widget secara vertikal atau dari atas ke bawah. Widget ini digunakan untuk mengatur urutan foto profil, nama mahasiswa, kartu identitas, informasi tambahan, dan tombol detail.
4. Row
Row digunakan untuk menyusun widget secara horizontal atau dari kiri ke kanan. Pada aplikasi ini, Row digunakan untuk menempatkan ikon, label informasi, tanda titik dua, dan nilai identitas mahasiswa dalam satu baris.
5. Container
Container digunakan untuk mengatur tampilan suatu komponen, seperti ukuran, warna latar belakang, padding, dan dekorasi. Pada aplikasi ini, Container digunakan untuk memberikan bingkai pada foto profil serta mengatur tampilan label status mahasiswa.
6. CircleAvatar
CircleAvatar berfungsi untuk menampilkan foto profil dalam bentuk lingkaran. Pada latihan ini, foto mahasiswa diambil dari folder assets/images/S.jpg menggunakan AssetImage, sehingga profil terlihat lebih personal dan sesuai dengan identitas mahasiswa.
7. Text
Text digunakan untuk menampilkan tulisan pada aplikasi, seperti nama mahasiswa, NIM, program studi, universitas, hobi, dan judul informasi. Ukuran, warna, serta ketebalan teks dapat diatur agar informasi mudah dibaca.
8. Card
Card berfungsi untuk mengelompokkan informasi ke dalam sebuah kartu agar tampilan lebih rapi. Dalam aplikasi ini, Card digunakan untuk menampilkan informasi identitas dan informasi tambahan mahasiswa, dilengkapi dengan sudut melengkung dan garis tepi.
9. Icon
Icon digunakan untuk menampilkan simbol visual yang mewakili suatu informasi. Contohnya, ikon sekolah untuk program studi, ikon kartu identitas untuk NIM, dan ikon hati untuk hobi. Penggunaan ikon membantu pengguna mengenali informasi dengan lebih mudah.
10. ElevatedButton
ElevatedButton merupakan widget tombol yang dapat ditekan oleh pengguna. Pada aplikasi ini, tombol Lihat Detail digunakan untuk menampilkan informasi mahasiswa secara lebih lengkap melalui tampilan showModalBottomSheet.
11. SingleChildScrollView
SingleChildScrollView memungkinkan pengguna menggulir halaman ke atas dan ke bawah ketika isi halaman lebih panjang daripada ukuran layar. Widget ini membantu memastikan semua informasi tetap dapat diakses, termasuk pada perangkat dengan layar kecil.
12. SizedBox
SizedBox digunakan untuk memberikan jarak atau menentukan ukuran tertentu pada widget. Dalam aplikasi ini, SizedBox berfungsi mengatur jarak antara foto profil, nama, kartu informasi, dan tombol agar tata letak terlihat lebih teratur.
13. Divider
Divider digunakan untuk membuat garis pemisah horizontal di antara informasi mahasiswa. Dengan adanya garis pemisah, setiap bagian informasi seperti NIM, program studi, universitas, dan hobi menjadi lebih mudah dibedakan.
14. PopupMenuButton
PopupMenuButton digunakan untuk menampilkan menu pilihan tambahan ketika pengguna menekan ikon titik tiga pada AppBar. Pada aplikasi ini, menu tersebut berisi pilihan Pengaturan dan Tentang Aplikasi.
15. SafeArea
SafeArea berfungsi untuk menjaga agar konten aplikasi tidak bertumpuk dengan area sistem perangkat, seperti status bar dan area navigasi. Dengan demikian, tampilan aplikasi menjadi lebih nyaman dan aman dilihat.
16. ScaffoldMessenger dan SnackBar
ScaffoldMessenger digunakan untuk menampilkan pesan singkat melalui SnackBar. Pada aplikasi ini, SnackBar memberikan respons ketika pengguna memilih menu tertentu, sehingga aplikasi terasa lebih interaktif.
17. showModalBottomSheet
showModalBottomSheet digunakan untuk menampilkan panel informasi dari bagian bawah layar. Pada aplikasi ini, panel tersebut muncul ketika tombol Lihat Detail ditekan dan menampilkan data mahasiswa secara lebih lengkap tanpa berpindah halaman.
Kesimpulan
Berdasarkan latihan yang telah dilakukan, setiap widget Flutter memiliki fungsi masing-masing dalam membangun antarmuka aplikasi. Widget seperti Scaffold dan AppBar digunakan sebagai struktur utama, Column dan Row mengatur posisi komponen, sedangkan Container dan Card membantu memperindah tampilan informasi. Sementara itu, CircleAvatar menampilkan foto profil, Text menyajikan informasi mahasiswa, dan ElevatedButton serta PopupMenuButton memberikan fitur interaktif. Dengan menggabungkan widget-widget tersebut, aplikasi Profil Mahasiswa dapat dibuat lebih rapi, menarik, mudah digunakan, dan sesuai dengan ketentuan tugas praktikum Flutter.