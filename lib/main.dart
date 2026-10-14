import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilMahasiswaApp());
}

class ProfilMahasiswaApp extends StatelessWidget {
  const ProfilMahasiswaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3F6FB),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF234A78)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF234A78),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const ProfilMahasiswaPage(),
    );
  }
}

class ProfilMahasiswaPage extends StatelessWidget {
  const ProfilMahasiswaPage({super.key});

  // Data mahasiswa
  final String nama = 'Muhammad Abdul Rouf';
  final String nim = '2495114015';
  final String prodi = 'Teknik Informatika';
  final String universitas = 'Universitas Hasyim Asy\'ari';
  final String hobi = 'Coding, Membaca, Desain';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu Profil Mahasiswa')),
            );
          },
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(value)));
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'Pengaturan', child: Text('Pengaturan')),
              PopupMenuItem(
                value: 'Tentang aplikasi',
                child: Text('Tentang aplikasi'),
              ),
            ],
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 12),

              // Foto profil
              Center(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xFF234A78),
                      width: 3,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withValues(alpha: 0.15),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: sixtyRadius,
                    backgroundColor: Color(0xFFDCE7F5),
                    backgroundImage: AssetImage('assets/images/S2.jpg'),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Nama mahasiswa
              Text(
                nama,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E293B),
                ),
              ),

              const SizedBox(height: 8),

              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDCE7F5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Mahasiswa Aktif',
                    style: TextStyle(
                      color: Color(0xFF234A78),
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 26),

              // Kartu identitas
              const SectionTitle(
                title: 'Informasi Identitas',
                icon: Icons.badge_outlined,
              ),

              const SizedBox(height: 10),

              Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: const BorderSide(color: Color(0xFFE1E7EF)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      InfoRow(
                        icon: Icons.credit_card,
                        label: 'NIM',
                        value: nim,
                      ),
                      const Divider(height: 24),
                      InfoRow(
                        icon: Icons.school_outlined,
                        label: 'Program Studi',
                        value: prodi,
                      ),
                      const Divider(height: 24),
                      InfoRow(
                        icon: Icons.account_balance_outlined,
                        label: 'Universitas',
                        value: universitas,
                      ),
                      const Divider(height: 24),
                      InfoRow(
                        icon: Icons.favorite_border,
                        label: 'Hobi',
                        value: hobi,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 22),

              // Informasi tambahan
              const SectionTitle(
                title: 'Informasi Tambahan',
                icon: Icons.info_outline,
              ),

              const SizedBox(height: 10),

              Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: const BorderSide(color: Color(0xFFE1E7EF)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 62,
                        height: 62,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDCE7F5),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.auto_awesome,
                          color: Color(0xFF234A78),
                          size: 34,
                        ),
                      ),

                      const SizedBox(width: 14),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tentang Saya',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E293B),
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Saya adalah mahasiswa yang tertarik '
                              'pada teknologi, pemrograman, dan '
                              'pengembangan aplikasi mobile.',
                              style: TextStyle(
                                color: Color(0xFF64748B),
                                fontSize: 13,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 26),

              // Tombol detail
              SizedBox(
                height: 52,
                child: ElevatedButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      backgroundColor: Colors.white,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Detail Mahasiswa',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              InfoRow(
                                icon: Icons.person_outline,
                                label: 'Nama',
                                value: nama,
                              ),
                              const SizedBox(height: 16),
                              InfoRow(
                                icon: Icons.credit_card,
                                label: 'NIM',
                                value: nim,
                              ),
                              const SizedBox(height: 16),
                              InfoRow(
                                icon: Icons.school_outlined,
                                label: 'Program Studi',
                                value: prodi,
                              ),
                              const SizedBox(height: 16),
                              InfoRow(
                                icon: Icons.account_balance,
                                label: 'Universitas',
                                value: universitas,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.visibility_outlined),
                  label: const Text(
                    'Lihat Detail',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF234A78),
                    foregroundColor: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                '© 2026 Profil Muhammad Abdul Rouf',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF94A3B8), fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Ukuran foto profil
const double sixtyRadius = 60;

// Widget judul bagian
class SectionTitle extends StatelessWidget {
  final String title;
  final IconData icon;

  const SectionTitle({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF234A78), size: 22),
        const SizedBox(width: 9),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E293B),
          ),
        ),
      ],
    );
  }
}

// Widget baris informasi
class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: const Color(0xFF234A78), size: 22),
        const SizedBox(width: 12),
        Expanded(
          flex: 4,
          child: Text(
            label,
            style: const TextStyle(fontSize: 13, color: Color(0xFF64748B)),
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          ':',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF94A3B8),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 5,
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1E293B),
            ),
          ),
        ),
      ],
    );
  }
}
