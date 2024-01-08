import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class VucutKitleEndeksiHesapla extends StatefulWidget {
  const VucutKitleEndeksiHesapla({Key? key}) : super(key: key);

  @override
  State<VucutKitleEndeksiHesapla> createState() => _VucutKitleEndeksiHesaplaState();
}

class _VucutKitleEndeksiHesaplaState extends State<VucutKitleEndeksiHesapla> {
  String selectedGender = 'Erkek';
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double result = 0.0;

  void calculateBMI() {
    double height = double.parse(heightController.text);
    double weight = double.parse(weightController.text);

    double bmi = weight / ((height / 100) * (height / 100));

    setState(() {
      result = bmi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vücut Kitle Endeksi Hesapla'),
        backgroundColor: Colors.green, // AppBar rengini değiştir
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.lightGreen], // Gradient renkleri
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Lütfen Bilgileri Doldurun",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 50,),
              DropdownButton<String>(
                value: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
                items: ['Erkek', 'Kadın'].map((String gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                style: TextStyle(color: Colors.black),
                dropdownColor: Colors.white, // Dropdown arka plan rengini değiştir
                icon: Icon(Icons.arrow_drop_down, color: Colors.black), // Dropdown ikon rengini değiştir
                underline: Container(
                  height: 2,
                  color: Colors.green, // Dropdown alt çizgi rengini değiştir
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Boy (cm)',
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Kilo (kg)',
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  calculateBMI();
                },
                child: Text('Hesapla'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Buton rengini değiştir
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('Vücut Kitle Endeksi: $result', style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vücut Kitle Endeksi Hesapla',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VucutKitleEndeksiHesapla(),
    );
  }
}
