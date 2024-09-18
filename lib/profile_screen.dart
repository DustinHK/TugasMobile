import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Bagian foto profil dan nama
          Row(
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://upload-os-bbs.hoyolab.com/upload/2024/04/01/12047304/407402d418b59bea72ad56c26aecab4f_8645244130600232348.jpg?x-oss-process=image%2Fresize%2Cs_300%2Fauto-orient%2C0%2Finterlace%2C1%2Fformat%2Cwebp%2Fquality%2Cq_80', // Gambar profil
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Asep Gaming',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Asepgg@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Bagian pengaturan akun
          const Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit Profile'),
            onTap: () {
              // edit profil
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Change Password'),
            onTap: () {
              // ganti password
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () {
              // Aksi untuk pengaturan notifikasi
            },
          ),
          const SizedBox(height: 20),

          // Bagian riwayat aktivitas
          const Text(
            'Activity History',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Recent Top-Ups'),
            onTap: () {
              // lihat riwayat top-up
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Favorites'),
            onTap: () {
              // lihat favorit
            },
          ),
          const SizedBox(height: 20),

          // Tombol logout
          Center(
            child: ElevatedButton(
              onPressed: () {
                // logout
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(),
            ),
          ),
        ],
      ),
    );
  }
}
