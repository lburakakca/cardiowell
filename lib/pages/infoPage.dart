import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: infoPage(),
    );
  }
}

class infoPage extends StatefulWidget {
  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Questions about Heart Diseases'),),
      body: Container(
        height: 350,
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.7),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(questionList[index].question),
                  SizedBox(height: 20),
                  Text(questionList[index].answer),
                ],
              ),
            );
          },
          itemCount: questionList.length,
        ),
      ),
    );
  }
}

class Question {
  final String question;
  final String answer;
  Question({required this.question, required this.answer});
}

List<Question> questionList = [
  Question(
      question: 'Kalp krizi geçirme riskim var mı?',
      answer:
      'Aynı yaşta olsa bile her insanın kalp krizi geçirme riski, bir diğerine göre oldukça farklıdır. Yüksek kolestrol,yüksek tansiyon, şeker hastalığı ( diyabet ), sigara içimi, ailede kalp hastalığının bulunması, haraketsiz yaşam biçimi, özellikle 45 yaş üstü ve erkek cinsiyet önemli risk faktörleridir. '),
  Question(
      question: 'Gizli Kalp Hastalığı nedir?',
      answer:
      'Gizli kalp dediğimiz Hipertrofik Kardiyopati dediğimiz kalp kasının kalınlaşması, bu kalınlaşmaya bağlı hastalarda bir aritmi potansiyeli taşıyor, ne yazık ki bu aritmi sonucu hastaların kaybedilmesi ile ya da kabin duraksaması ile ortaya çıkıyor.'),
  Question(
      question: 'Kalp sağlığı için hangi aralıkta kontrole gitmeliyiz?',
      answer:
      'Burada kişinin yaşı, risk faktörleri, şeker hastalığının olup olmaması, hipertansiyon gibi risk faktörlerini yoğunluğu önemli, çünkü bu oran ne kadar yoğunsa hastalıkla karşılaşma riskimi o kadar yüksek. Tüm bu detaylar göz önünde bulundurularak takip sıklığı ayarlanmalı.'),
  Question(
      question: 'Neden ölümlerde kalp hastalıkları ilk sırada yer alıyor?',
      answer:
      'Bunun en önemli nedeni, günümüzde hareketsiz bir yaşamın ve fast food tipi beslenmenin benimsenmesi. Bunun yanı sıra, kalp damar hastalıkları sinsi sinsi ilerliyor. Öyle ki koroner arter hastalarının yaklaşık üçte biri, bu hastalığa yakalandıklarını bilmeden, ani gelişen kalp krizi sonucu yaşamlarını yitiriyor.'),
];