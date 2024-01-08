import 'package:flutter/material.dart';
import 'AnaSayfa.dart';

class GirisYapmaEkrani extends StatefulWidget {
  const GirisYapmaEkrani({Key? key}) : super(key: key);

  @override
  State<GirisYapmaEkrani> createState() => _GirisYapmaEkraniState();
}

class _GirisYapmaEkraniState extends State<GirisYapmaEkrani> {
  TextEditingController kullaniciAdiController = TextEditingController();
  TextEditingController sifreController = TextEditingController();
  bool sifreGizli = true; // Şifrenin gizli olup olmadığını kontrol etmek için bir değişken

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFF3CB441)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Center(
                      child: Text(
                        "UYGULAMA",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/logo.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Giriş Yap",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    controller: kullaniciAdiController,
                    decoration: InputDecoration(
                      labelText: 'Kullanıcı Adı',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      prefixIcon: Icon(Icons.person), // Kullanıcı simgesi
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: sifreController,
                    obscureText: sifreGizli,
                    decoration: InputDecoration(
                      labelText: 'Şifre',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      prefixIcon: Icon(Icons.lock), // Kilit simgesi
                      suffixIcon: IconButton(
                        icon: Icon(
                          sifreGizli ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            sifreGizli = !sifreGizli;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF196B1A), // Buton rengi
                      ),
                      onPressed: () {
                        girisYap();
                      },
                      child: Text('Giriş Yap'),
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void girisYap() {
    String kullaniciAdi = kullaniciAdiController.text;
    String sifre = sifreController.text;

    if (kullaniciAdi == 'yigit' && sifre == '123') {
      // Kullanıcı adı ve şifre doğru ise Ana Sayfa ekranına geçiş yapalım
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AnaSayfa()),
      );
    } else {
      // Kullanıcı adı veya şifre yanlışsa hata mesajı gösterelim
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kullanıcı adı veya şifre hatalı. Lütfen tekrar deneyin.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

}
