import 'package:flutter/material.dart';

class Bilgilendirme extends StatelessWidget {
  const Bilgilendirme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilgilendirme'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Gelişmekte olan dünyamızın en önemli unsuru teknolojidir.',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Text(
                  'Teknoloji bu kadar önemli iken teknoloji ürünlerine ulaşım bir o kadar basite indirgenmelidir. Uygulamanın sağladığı da bu, kullanıcının alacakları ürüne daha kolay ulaşımını sağlayacaktır.',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Text(
                  'Bu uygulamanın amacı, kullanıcılara teknoloji ürünlerine kolay erişim sağlamaktır. Kullanıcılar uygulama üzerinden çeşitli teknoloji ürünlerini arayabilir, inceleyebilir ve satın alabilirler. Uygulama, kullanıcıların teknoloji ürünlerine daha hızlı ve pratik bir şekilde ulaşmalarını sağlayarak teknolojiye olan erişimi kolaylaştırmayı hedeflemektedir. Kullanıcılar, uygulama üzerinden ürünlerin detaylı bilgilerini, fiyatlarını, kullanıcı yorumlarını görebilir ve istedikleri ürünleri sepetlerine ekleyerek satın alma işlemini gerçekleştirebilirler. Böylece teknoloji ürünlerine ulaşımı basitleştiren bir platform sunarak kullanıcıların ihtiyaçlarına çözüm sunmayı amaçlamaktadır.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'YAPAN VE TASARLAYAN : VOLKAN DEMİR',
                  style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
