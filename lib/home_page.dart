import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> Item = [
    "assets/item_page/1.jpg",
        "assets/item_page/3.jpg",
        "assets/item_page/4.jpg",
        "assets/item_page/5.jpg",
        "assets/item_page/2.jpg",
        "assets/item_page/1.jpg",
        "assets/item_page/4.jpg",
        "assets/item_page/5.jpg",
        "assets/item_page/3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                height: 36,
                width: 38,
                decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "7",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
        ],
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "Apple Products",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/item_page/2.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.1),
                  ]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "     Lifestyle sale",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      child: Center(
                        child: Text(
                          "Shop Now",
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    children: Item
                        .map((image) => _itemList(image))
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemList(String image) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.heart_broken,
              color: Colors.redAccent,

              size: 36,
            )
          ],
        ),
      ),
    );
  }
}
