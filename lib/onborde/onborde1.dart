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
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
