import 'package:flutter/material.dart';

class OnBorde1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OnBorde1();
  }
}

class _OnBorde1 extends State<OnBorde1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 89, 0),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/onbord1.png"),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "مرحبا بك في تطبيق ",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "The Happy Earner",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  "اكتشف أفضل عروض الهواتف الذكية مع تطبيقنا!نوفر أحدث الإصدارات من كبرى العلامات التجاريةبأسعار تنافسية، مع خصومات حصرية وخياراتتقسيط مريحة. تسوّق بسهولة، واطلب هاتفكالآن مع توصيل سريع وضمان معتمد",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("home");
                },

                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "ابداء معنا الان ",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
