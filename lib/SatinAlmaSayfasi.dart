import 'package:flutter/material.dart';

class SatinAlmaSayfasi extends StatelessWidget {
  const SatinAlmaSayfasi({Key? key}) : super(key: key);

  void _showSatinalmaPopup(BuildContext context, String paketAdi) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Satın Aldınız'),
          content: Text('Satın alınan paket: $paketAdi'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tamam'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA9DAAC),
      appBar: AppBar(
        title: Text('Satın Alma Sayfası'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset('images/beslenme.png', height: 150, fit: BoxFit.cover),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '1 Aylık Beslenme Paketi',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Bu paket 1 ay boyunca tüm beslenme ihtiyaçlarınızı karşılar.',
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        _showSatinalmaPopup(context, 'Beslenme Paketi');
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      child: Text('Satın Al'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset('images/antrenman.png', height: 150, fit: BoxFit.cover),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '1 Aylık Spor Paketi',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Bu paket 1 ay boyunca spor ihtiyaçlarınızı karşılar.',
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        _showSatinalmaPopup(context, 'Spor Paketi');
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      child: Text('Satın Al'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset('images/ikisi.png', height: 150, fit: BoxFit.cover),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '1 Aylık Spor + Beslenme Paketi',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Bu paket 1 ay boyunca spor ve beslenme ihtiyaçlarınızı karşılar.',
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        _showSatinalmaPopup(context, 'Spor + Beslenme Paketi');
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      child: Text('Satın Al'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
