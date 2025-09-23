import 'package:flutter/material.dart';
import '../constants/theme.dart';

class DetailItemScreen extends StatelessWidget {
  final String itemName;

  DetailItemScreen({required this.itemName});

  // Bisa isi penjelasan statis atau berdasarkan nama
  String getDetail(String name) {
    switch (name) {
      case "Ciherang":
        return "Ciherang adalah varietas padi unggulan...";
      case "Inpari Series":
        return "Inpari Series: gabungan varietas dengan sifat ...";
      case "Mentik Wangi":
        return "Mentik Wangi: aroma harum dan tekstur pulen...";
      case "Rojo Lele":
        return "Rojo Lele: warna merah, rasa khas ...";
      case "Organik":
        return "Pupuk organik terbuat dari bahan alami...";
      case "ZA":
        return "Pupuk ZA: campuran nitrogen dan ammonium...";
      case "Urea":
        return "Urea: kandungan nitrogen tinggi untuk pertumbuhan daun...";
      case "Phonska":
        return "Phonska: pupuk majemuk bisa untuk dasar pertumbuhan...";
      case "Gramaxone":
        return "Gramaxone: fungisida untuk tanaman padi...";
      case "Debestan":
        return "Debestan: insektisida untuk hama sekunder...";
      case "Score":
        return "Score: fungisida sistemik untuk penyakit daun...";
      case "Furadan":
        return "Furadan: pestisida digunakan secara hati-hati ...";
      default:
        return "Detail tidak tersedia.";
    }
  }

  @override
  Widget build(BuildContext context) {
    String detail = getDetail(itemName);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 93, 134, 95),
        title: Text(itemName),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          detail,
          style: TextStyle(
            fontSize: 16,
            color: const Color.fromARGB(175, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
