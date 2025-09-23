import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'detail_screen.dart';
import 'lahan_screen.dart';
import '../constants/theme.dart';

class HomeScreen extends StatelessWidget {
  final String userEmail;

  HomeScreen({required this.userEmail});

  final List<String> menuItems = [
    "Varietas Padi",
    "Pupuk",
    "Obat-obatan",
    "Panduan Lahan",
  ];

  String getUserName(String email) {
    if (email.contains('@')) {
      return email.split('@')[0];
    }
    return email;
  }

  void _navigateTo(BuildContext context, String title) {
    if (title == "Panduan Lahan") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LahanScreen()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailScreen(title: title)),
      );
    }
  }

  void _logout(BuildContext context) {
    // kembali ke login page
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    String userName = getUserName(userEmail);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 93, 134, 95),
        title: Text("Beranda"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => _logout(context),
            tooltip: 'Keluar',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat Datang, $userName!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(
                  189,
                  23,
                  23,
                  23,
                ), // tambahan warna gelap
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color.fromARGB(131, 46, 125, 50),
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        menuItems[index],
                        style: TextStyle(
                          color: const Color.fromARGB(205, 255, 255, 255),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      onTap: () => _navigateTo(context, menuItems[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
