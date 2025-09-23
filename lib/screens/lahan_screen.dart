import 'package:flutter/material.dart';
import '../constants/theme.dart';

class LahanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 93, 134, 95),
        title: Text("Panduan Lahan"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          '''Alur Pengolahan Lahan:
1. Membersihkan lahan dari gulma dan sisa tanaman.
2. Membajak tanah untuk memperbaiki struktur tanah.
3. Pengairan dan pengeringan awal.
4. Pemupukan dasar dengan pupuk organik.
5. Pembuatan bedengan dan saluran air.
6. Siap tanam!

Tips: Gunakan pupuk organik untuk menjaga kesuburan tanah.''',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
