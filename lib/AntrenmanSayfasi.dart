import 'package:flutter/material.dart';

class AntrenmanSayfasi extends StatelessWidget {
  const AntrenmanSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness?'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/antrenman.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle('Fitness Nedir?'),
                  _buildSubtitle('Sağlıklı bir vücuda sahip olmayı dileyen birçok kişi önce fitness yapmayı düşünür.'),
                  _buildParagraph(
                      'Ancak çoğu kimse "Fitness ne işe yarar?" sorusunun cevabını tam olarak bilememektedir. Fitness, çoğu zaman vücut geliştirme antrenmanlarıyla karıştırılır.'),
                  _buildParagraph(
                      'Vücut geliştirmede temel amaç, kas hacminin ve kütlesinin artırılması iken fitness vücudun daha fit görünmesine imkan sağlar. Sağlıklı bir hayata sahip olmak ve vücudun formda kalmasını sağlamak için yapılan egzersizler olarak tanımlanan fitness, vücuttaki yağların yakılmasına yardımcı olur.'),
                  _buildParagraph(
                      'Bu antrenmanlarda kasların hacim alması değil, sıkılaşması ön plana çıkar. Daha ince ve daha esnek bir vücuda sahip olmana olanak tanıyan fitness antrenmanları, fiziksel sağlığın yanı sıra ruhsal sağlığa da büyük faydalar sunar.'),
                  Image.asset(
                    'images/antrenman2.png',
                    fit: BoxFit.cover,
                  ),
                  _buildTitle('Fitness Nasıl Yapılır?'),
                  _buildParagraph('Fitness programları kişiye özel olarak hazırlanır. Ancak bu programlar uzman kişilerce oluşturulmalıdır.'),
                  _buildParagraph(
                      'Bir fizyoterapist veya spor eğitmeni tarafından hazırlanan fitness antrenmanları hem aletlerle birlikte hem de aletsiz olarak yapılabilir. Bu antrenmanlar, dayanıklılığı ve kondisyonu artırmak için yapılan yüzme ve koşu gibi antrenmanlar ile pilates ve yoga gibi kas sıkılaşmasına katkı sunan antrenmanlarla birlikte yapılır.'),
                  _buildParagraph(
                      'Yüzme ve koşu gibi kardiyo antrenmanları kan dolaşımını düzenler ve vücudun daha fazla kalori harcamasına yardımcı olur. Aynı zamanda bu egzersizler yağ yakımını da hızlandırır ve hızlıca kilo vermene katkı sağlar. Pilates ve yoga gibi antrenmanlar ise bölgesel olarak kas gruplarının çalışmasına imkan tanır.'),
                  _buildParagraph(
                      'Kasları geliştiren bu antrenmanlar, sıkı bir vücudun kapılarını aralar. Fitness antrenmanları ile vücuda esneklik kazandırılır. Vücudun daha fit görünmesi hedeflenir. Vücut yağlarının eritilmesi amaçlanan bu antrenmanlarda, terleme ile fazla suyun ve toksin maddelerin dışarı atılmasına da olanak tanınır.'),
                  _buildTitle('Fitness Yapmanın Sunduğu Faydalar'),
                  _buildParagraph(
                      'Fitness egzersizleri, vücut kaslarının neredeyse hepsinin kullanılmasına yardımcı olur. Antrenmanlar düzenli olarak yapıldığında ise vücuda büyük faydalar sağlar. Kemik ve kas sistemini büyük ölçüde güçlendiren fitness egzersizleri, kardiyo ve ağırlık egzersizleriyle birlikte oluştuğundan metabolizmanın hızlanmasına yardımcı olur.'),
                  _buildParagraph(
                      'Bu egzersizlerle birlikte vücut kalori yakar ve kilo verme süreci hızlanır. Sırt ve karın kaslarını çalıştıran egzersizler duruş bozukluğu gibi problemlerin ortadan kaldırılmasına da katkı sunar. Egzersizler nefes alıp vermeyi düzenler, vücuttaki toksinlerin atılmasına olanak tanır. Aynı zamanda fitness kan basıncını düzenler, tansiyon ve kalp-damar hastalıkları riskini azaltır.'),
                  _buildParagraph(
                      'Vücuda sunduğu yararların yanı sıra fitness ruhsal gelişime de katkı sağlar. Serotonin salgılanmasını artıran fitness, yaşanılanlara daha pozitif bir bakış açısıyla bakabilmene imkan tanır. Zihinsel açıdan gelişebilmene de yardımcı olan fitness, uykundan daha fazla verim alabilmene, öz güvenini artırmana da olanak sağlar.'),
                  _buildParagraph(
                      'Hayatını düzene sokmana yardımcı olabilecek fitness antrenmanları için gerekli ekipmanları sneakscloud.com\'dan kolayca edinebilirsin.'),
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

  Widget _buildSubtitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
