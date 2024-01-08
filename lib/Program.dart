import 'package:flutter/material.dart';

class Program extends StatefulWidget {
  const Program({Key? key}) : super(key: key);

  @override
  State<Program> createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Programı'),
        backgroundColor: Color(0xFF195E1A), // Koyu yeşil renk
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/antrenman.png'), // Program resmi
            _buildSection('BU FITNESS PROGRAMI', 'Uzun süredir ya da hiç spor yapmamış vücudunuzu, fitness sporuna adapte etmeye yönelik hazırlandı.'),
            _buildSection('TÜM MAKİNELERE KOŞUP DENEMEK', 'Tüm makinelere koşup hepsini tek tek denemek istediğinizi çok iyi biliyorum. Gözünüz devamlı bench press sehpasında ve ağırlıkları takıp gücünüzü denemek, kendinizi motive etmek istiyorsunuz. Acele yok. Her şey zamanla. Öncelikle tüm kaslarınızı harekete geçirmemiz gerekiyor. İlk ayınızda fazla yüklenmeden minimum ağırlıklarla çalışacaksınız. Kaldıracağınız ağırlık miktarına değil egzersizlerin doğru formlarını yapmaya odaklanın.'),
            _buildSection('EGZERSİZ İSİMLERİ', 'Egzersiz isimlerini verdiğimde ilgili makalelere göz atarsanız nasıl yapıldıklarını, hangi kasları çalıştırdıklarını ve püf noktalarını en ince ayrıntısına kadar öğrenebilirsiniz.'),
            _buildSection('KAS GRUPLARI', 'Öncelikle fitness sporundaki kas gruplarından bahsetmek istiyorum. Fitness programınızı bu gruplara göre hazırlayacağız. Vücut fitness kas geliştirme sporuna göre; Göğüs, Omuz, Sırt, Kol, Karın, Kalça, Bacak ve Karın olmak üzere 7 gruba ayrılır.'),
            _buildSection('İLERİ SEVİYE PROGRAMLAR', 'İleri seviye programlarda her gün bir kas grubu çalıştırılır. Çalıştırılan kas grubunun büyüklüğüne göre küçük kas gruplarından eklemeler yapılabilir. Örneğin göğüs antrenmanına biceps (ön kol) egzersizleri eklenebilir. Omuz antrenmanına ise triceps (arka kol). Sırt ve Bacak kasları, büyük kas grupları olduğundan genelde ekleme yapılmaz.'),
            _buildSection('BESLENME PROGRAMI', 'Bunun nedeni ise kas gelişimi için proteine ihtiyacımız vardır ve aldığımız protein miktarı hem büyük hem de küçük kas gruplarına yetmeyebilir. Bu çok ayrıntılı bir konu. İlerleyen zamanlarda makalesini yazabilirim. Sizlere bölgesel bir program sunmadan önce fitness sporuna adapte olabilmeniz için tüm kas gruplarınızı çalıştıracak bir program vereceğim. İlerleyen zamanlarda bölgesel programa da geçeceğiz.'),
            _buildSection('HAFTALIK PROGRAM', 'Fitness programımız haftada 3 günlük bir program olacak. Antrenmanın ertesi günü dinlenmeniz büyük önem taşımakta. Kasların çalışırken değil, uyurken ve dinlenirken büyüdüğünü unutmayın. İlla şu gün başlayacaksanız diye de bir kural yok. İş veya okul durumunuza göre salona gideceğiniz günleri kendiniz belirleyebilirsiniz. Programa kısaca bir göz atalım. Ardından anlatımlarını da yapacağım.'),
            _buildSection('FITNESS PROGRAMI 1. AY İÇERİĞİ',
                'Koşu bandı : 10 Dakika  = Kardiyo\n'
                    'Eliptik Bisiklet : 5 Dakika = Kardiyo\n'
                    'Leg Press :  3 Set 10 Tekrar = Bacak\n'
                    'Calf Raises : 3 Set 10 Tekrar = Kalf\n'
                    'Dumbbell Bench Press : 3 set 10 Tekrar = Göğüs\n'
                    'Dumbbell Shoulder Press : 3 Set 10 Tekrar = Omuz\n'
                    'Lat Pulldown : 3 Set 10 Tekrar = Sırt\n'
                    'Barbell Curl : 3 Set 10 Tekrar = Ön Kol\n'
                    'Triceps Push Down : 3 Set 10 Tekrar = Arka Kol\n'
                    'Crunch : 1 Set  Max. Tekrar = Karın\n'),
            _buildSection('İLK İKİ HAREKET', 'İlk iki hareket olan koşu bandı ve eliptik bisiklet kondisyonunuzu arttırmaya yönelik olacak. Aşırı kilo probleminiz var ise yağ yakımını başlatacak ve antrenman boyunca vücudunuzun sıcak kalmasını ve terlemesini sağlayacak. Diğer hareketlerde set aralarını 45 saniye kadar tutarsanız vücudunuz soğumamış olur. Ardından gelen iki hareket ise hem bacak hem de kalça kaslarınızı çalıştıracaktır. Leg press ön bacak, arka bacak ve kalça kaslarınızı çalıştırır. Calf egzersizi ise kalf yani baldırlarınızı çalıştırır. Dumbbell bench press egzersizi, göğüs gelişimi açısından fitness’a yeni başlayanlar için oldukça uygundur. Bench press için biraz daha zamana ihtiyacınız var. Dumbbell shoulder press ise omuz kaslarınızı çalıştırır. Başlangıç için idealdir. İlerleyen seviyedeki programlarda barbell ile yapılan daha ağır ve etkili omuz hareketleri kullanabiliriz. Barbell curl ve Triceps push down egzersizleri  kol gelişimi için temel hareketlerdir. Barbell curl biceps yani pazularınızı, Triceps push down ise  triceps yani arka kol kaslarınızı geliştirir. Crunch egzersizi ise karın kaslarınızı gerçek anlamda çalıştıracaktır.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
