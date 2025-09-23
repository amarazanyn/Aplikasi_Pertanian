import 'package:flutter/material.dart';
import '../constants/theme.dart';
import 'detail_item_screen.dart';

class DetailScreen extends StatelessWidget {
  final String title;

  DetailScreen({required this.title});

  List<String> _getItemNames() {
    switch (title) {
      case "Varietas Padi":
        return ["Ciherang", "Inpari Series", "Mentik Wangi", "Rojo Lele"];
      case "Pupuk":
        return ["Organik", "ZA", "Urea", "Phonska"];
      case "Obat-obatan":
        return ["Gramaxone", "Debestan", "Score", "Furadan"];
      default:
        return [];
    }
  }

  void _openItemDetail(BuildContext context, String itemName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailItemScreen(itemName: itemName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> items = _getItemNames();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 93, 134, 95),
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(131, 46, 125, 50),
            elevation: 3,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                items[index],
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              onTap: () => _openItemDetail(context, items[index]),
            ),
          );
        },
      ),
    );
  }
}
