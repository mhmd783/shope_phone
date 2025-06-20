import 'package:flutter/material.dart';

class Cat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Cat();
  }
}

class _Cat extends State<Cat> {
  int _currentIndex = 1;
  // تعيين الفهرس الحالي للأقسام
  List data = [
    "assets/images/cat1.png",
    "assets/images/cat2.png",
    "assets/images/cat1.png",
    "assets/images/cat2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/Logo.png"),
        actions: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {
                // Action when the cart icon is pressed
                print("heart icon pressed");
              },
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {
                // Action when the cart icon is pressed
                print("cart icon pressed");
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    onSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'ابحث عن هاتفك بسهولة',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                        onPressed: () {
                          print("search");
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "الأقسام",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      child: Image.asset("${data[i]}"),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 22, 22, 22),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed, // لأن عندنا 5 عناصر
        onTap: (index) {
          _currentIndex = index;
          if (index == 0) {
            Navigator.of(context).pushNamed("home");
          } else if (index == 1) {
            Navigator.of(context).pushNamed("cat");
          } else if (index == 3) {
            Navigator.of(context).pushNamed("cart");
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'الأقسام',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'العروض',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'السلة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
