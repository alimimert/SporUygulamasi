import 'package:flutter/material.dart';
import 'package:sporuygulamasi/AntrenmanSayfasi.dart';
import 'package:sporuygulamasi/Beslenme.dart';
import 'package:sporuygulamasi/Program.dart';
import 'package:sporuygulamasi/SatinAlmaSayfasi.dart';
import 'VucutKitleEndeksiHesapla.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spor Uygulaması'),
        backgroundColor: Color(0xFF195E1A), // Koyu yeşil renk
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/anasayfa.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                _buildMenuCard(
                  'Beslenme Bilgisi',
                  'Beslenme sayfasında size nasıl beslenmeniz gerektiğini anlatacağız, besin çeşitlerini tanıyacaksınız...',
                      () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Beslenme(),
                    ));
                  },
                ),
                _buildMenuCard(
                  'Fitness',
                  'Fitness sayfasına girdiğinizde fitnessın ne anlama geldiğini öğreneceksiniz, bunun yanında faydalarını öğreneceksiniz, ve nasıl yapacağınızı öğrenebileceksiniz...',
                      () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AntrenmanSayfasi(),
                    ));
                  },
                ),
                _buildMenuCard(
                  'Paket Satın Al',
                  'Özel paketlerimizi satın almak için lütfen tıklayınız',
                      () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SatinAlmaSayfasi(),
                    ));
                  },
                ),
                _buildMenuCard(
                  'Vücut Kitle Endeksi Hesapla',
                  'Boy Kilo ve Cinsiyet bilgilerinizi girerek vücut kitle endeksini hesaplamak için lütfen tıklayınız.',
                      () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => VucutKitleEndeksiHesapla(),
                    ));
                  },
                ),
                _buildMenuCard(
                  'Fitness Programı',
                  'Başlangıç için uygun bir fitness programı almak için lütfen tıklayınız.',
                      () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Program(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(String title, String description, VoidCallback onTap) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(description),
            ),
          ),
          ElevatedButton(
            onPressed: onTap,
            child: Text('Sayfaya Git'),
            style: ElevatedButton.styleFrom(primary: Color(0xFF195E1A)),
          ),
        ],
      ),
    );
  }
}
