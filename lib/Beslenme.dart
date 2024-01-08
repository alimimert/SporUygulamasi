import 'package:flutter/material.dart';

class Beslenme extends StatelessWidget {
  const Beslenme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sağlıklı Beslenme'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/beslenme.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle('Sağlıklı beslenme nedir?'),
                  _buildParagraph(
                      'İnsan vücudunda günlük fonksiyonların yerine getirilebilmesi için besinlere ihtiyaç duyulur. Tüketilen besinler vücutta fiziksel aktivite ve biyolojik işlevler için gereken enerji kaynağını oluşturur. Yediğimiz besinlerin içerisinde yer alan üç temel besin ögesi vardır. Bunlar karbonhidrat, protein ve yağlardır. Makro besin ögeleri olarak adlandırılan bu üç temel gruba ek olarak mikro besin ögeleri olan vitamin ve mineraller de besinlerle birlikte vücuda alınan diğer bileşenlerdir. Sindirim, solunum, boşaltım, solunum, dolaşım, sinir, iskelet ve kas sistemlerinin sorunsuz bir şekilde çalışması, hormonlar ve vücut salgılarının sağlıklı bir şekilde üretilmesi, motor becerilerle bilişsel fonksiyonların sağlıklı bir biçimde devam ettirilmesi için vitamin ve minerallere olan gereksinimlerin tam olarak karşılanması çok büyük bir öneme sahiptir. Ayrıca sindirim sistemi başta olmak üzere vücutta birçok sistemin düzenini korunabilmesi yalnızca sağlıklı ve dengeli bir beslenme planının uygulanması ile mümkündür. Sağlıklı beslenme, en temel anlamıyla tüm makro ve mikro besin ögelerini kişinin ihtiyaç duyduğu miktarlarda içeren, aynı zamanda bireyin ihtiyaç duyduğu enerji miktarını tam olarak karşılayan, ideal kilonun korunması için uygun olan beslenme türüdür. Her bireyin vücut kompozisyonu, yaşı, cinsiyeti ve sağlık durumu birbirinden farklı olduğundan sağlıklı beslenme programı olarak tanımlanabilecek tek bir liste söz konusu değildir. Sağlıklı beslenme listesi, genel kuralları belli olmasına karşın kişiye özgü olarak diyetisyen tarafından hazırlanmalıdır.'),
                  _buildTitle('Sağlıklı beslenme neden önemlidir?'),
                  _buildParagraph(
                      'Vücut fonksiyonlarının sağlıklı bir şekilde sürdürülebilmesi için protein, karbonhidrat, yağ, vitamin, mineral ve diyet lifleri besinlerle birlikte yeterli miktarda vücuda alınmalıdır. Bunun için her besin türünden yeterli miktarda ve aşırıya kaçmadan tüketilmeli, diyette çeşitlilik sağlanmalıdır.'),
                  Image.asset(
                    'images/beslenme2.png',
                    fit: BoxFit.cover,
                  ),
                  _buildTitle('Proteinler: '),
                  _buildParagraph(
                      'Proteinler yapıcı ve onarıcı besin grubu olarak da adlandırılır ve insan vücudunun yapısında en fazla yer alan besin ögesidir. Ruhsal ve bilişsel işlevlerin desteklenmesi, motor becerilerin gerçekleştirilmesi ve bunun için gerekli olan enerjinin üretilmesi, bağışıklık sistemine ilişkin ögelerin ve kanın üretiminin sağlıklı olarak devam ettirilmesi ve daha birçok işlevin yerine getirilmesi için protein gereksinimi tam olarak karşılanmalıdır. Bitkisel ve hayvansal besinlerde değişen oranlarda bulunan protein, gençlerde ve özellikle de fiziksel aktivite düzeyi yüksek olan bedenen çalışan kişilerde ve sporcularda sağlıklı beslenme için gerekli olan protein miktarı artarken sedanter yaşam tarzına sahip olan bireyler ile karaciğer ve böbrek hastalarında besinlerle birlikte alınması gereken protein miktarı azalır.'),
                  _buildTitle('Karbonhidratlar: '),
                  _buildParagraph(
                      'Vücudun temel enerji kaynakları olan karbonhidratlar; en fazla tahıllar, kuru baklagiller ve meyvelerde bulunur. Sağlıklı beslenmek isteyen bireylerin karbonhidrat gereksinimlerini tam olarak karşılamaya özen gösterirken bunları rafine şeker ve saflaştırılmış tahıllar yerine lif, vitamin ve mineral içeriği yüksek olan kompleks karbonhidratlardan (tam tahıllar, baklagiller vb.) karşılamalıdır. Bu sayede kilo kontrolü sağlanabilirken aynı zamanda enerji ve ruh halindeki dalgalanmaların önüne geçilebilir, kan şekeri kontrol altında tutulabilir.'),
                  _buildTitle('Yağlar: '),
                  _buildParagraph(
                      'Bir diğer besin ögesi olan yağlar, kilo artışıyla en çok ilişkili olan ve ölçülü olarak tüketilmesi gereken besin gruplarındandır. Bununla birlikte vücut fonksiyonlarının sorunsuz bir şekilde devam ettirilebilmesi ve özellikle de hormonal dengenin korunabilmesi açısından vücudun ihtiyaç duyduğu yağ miktarı sağlıklı kaynaklardan tam olarak karşılanmalıdır. Hayvansal kaynaklı katı yağlar ve margarin gibi işlem görmüş yağlardan mümkün olduğunca kaçınılmalı, bunların yerine zeytin yağı ve omega 3 yağ asitleri içeren balığın tüketimine özen gösterilmelidir. Yağ gereksinimi karşılanırken bunun sadece besinlere eklenen yağlardan ibaret olmadığı; et, süt, balık gibi besinlerin yapılarında da önemli miktarda yağın bulunduğu unutulmamalıdır.'),
                  _buildTitle('Sağlıksız beslenmeye bağlı olarak görülebilen sorunlar nelerdir?'),
                  _buildParagraph(
                      'Dünya üzerinde sıklıkla görülen kronik hastalıkların pek çoğu beslenme ile doğrudan bir ilişki içerisindedir. Buna ek olarak sağlıksız ve dengesiz beslenme ile enfeksiyon hastalıkları başta olmak üzere birçok akut hastalığın da ortaya çıkış riskinde artış söz konusudur. Ülkemizde ve dünyada beslenmeye bağlı olarak en sık görülen sağlık sorunu obezitedir. Fazla kiloluluğun ileri bir boyutu olan obezite; kalp ve damar hastalıkları, diyabet, hormonal hastalıklar ve metabolik sendrom gibi birçok hastalığın en önemli risk faktörlerinden bir tanesidir. Sağlıksız, dengesiz veya yetersiz beslenme durumunda ortaya çıkan kötü beslenme tablosu, tıp dilinde malnütrisyon olarak adlandırılır.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
