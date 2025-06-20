import 'package:flutter/material.dart';
import 'package:shop_phone1/home/item.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  List data = [
    {
      "rate": "3.5",
      "Image": "assets/images/realme.png",
      "dis":
          "يوفي كلين ال 60 هايبرد مكنسة\nكهربائية روبوتية مع محطة\nللتفريغ الذاتي",
      "adj": ["4 رام ", "مساحه 128"],
      "salary": "5000",
    },
    {
      "rate": "5.0",
      "Image": "assets/images/oppo.png",
      "dis":
          "يوفي كلين ال 60 هايبرد مكنسة\nكهربائية روبوتية مع محطة\nللتفريغ الذاتي",
      "adj": ["8 رام ", "مساحه 256"],
      "salary": "8000",
    },
    {
      "rate": "2.3",
      "Image": "assets/images/realme.png",
      "dis":
          "يوفي كلين ال 60 هايبرد مكنسة\nكهربائية روبوتية مع محطة\nللتفريغ الذاتي",
      "adj": ["12 رام ", "مساحه 512"],
      "salary": "10000",
    },
  ];
  int _currentIndex = 0;
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
              SizedBox(height: 30),
          
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.location_on, color: Colors.black),
                      onPressed: () {
                        print(Icon);
                      },
                    ),
                    SizedBox(width: 8),
                    Text(
                      ' توصيل الى مصر-سوهاج',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
          
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 10 / 5,
                  child: Image.asset(
                    'assets/images/image1.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    return Item(data: data[i]);
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
          if(index == 0) {
            Navigator.of(context).pushNamed("home");
          } else if(index == 1) {
            Navigator.of(context).pushNamed("cat");
          }  else if(index == 3) {
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
