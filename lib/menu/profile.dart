import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Aksi tombol kembali
          },
        ),
        title: const Text(
          'Profil',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // Bagian Foto Profil dan Ikon Kamera
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/200', 
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF00A884), // Warna hijau khas WhatsApp
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Daftar Informasi Profil
            _buildProfileItem(
              icon: Icons.person_outline,
              label: 'Nama',
              value: 'Rano',
            ),
            _buildProfileItem(
              icon: Icons.info_outline,
              label: 'Tentang',
              value: 'Atur isi Tentang',
              valueColor: const Color(0xFF00A884),
            ),
            _buildProfileItem(
              icon: Icons.alternate_email,
              label: 'Nama pengguna',
              value: 'Pesan nama pengguna',
              valueColor: const Color(0xFF00A884),
            ),
            _buildProfileItem(
              icon: Icons.phone_outlined,
              label: 'Telepon',
              value: '+62 882-2171-7162',
            ),
            _buildProfileItem(
              icon: Icons.link,
              label: 'Tautan',
              value: 'Instagram',
            ),
          ],
        ),
      ),
    );
  }

  // Widget kustom untuk setiap baris profil
  Widget _buildProfileItem({
    required IconData icon,
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.grey[600], size: 26),
          ],
        ),
        title: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: valueColor ?? Colors.black87,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}