import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;
  List slideImage = [
    "assets/images/w1.jpg",
    "assets/images/w2.jpg",
    "assets/images/w3.jpg",
    "assets/images/w4.jpg",
  ];

  List menuImage = [
    'assets/images/p1.png',
    'assets/images/p2.png',
    'assets/images/p3.png',
    'assets/images/p4.png',
    'assets/images/p5.png',
    'assets/images/p6.png',
    'assets/images/p7.png',
    'assets/images/p8.png',
  ];

  List title = [
    'ফ্রি ক্লাস ভিডিও',
    'MCQ App',
    'সাফল্য চিত্র',
    'লাইভ ক্লাস ভিডিও',
    'লাইভ জুম ক্লাস',
    'বই কিনুন',
    'About Us',
    'বিগত সালের প্রশ্নপত্র'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CarouselSlider(
                  items: slideImage
                      .map((image) => Builder(builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              width: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                    image: AssetImage(image), fit: BoxFit.fill),
                              ),
                            );
                          }))
                      .toList(),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    height: 300,
                    viewportFraction: 1,
                    autoPlay: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex, count: slideImage.length),
              ),
            ],
          ),
          Card(
            child: ListTile(
                // leading: Image.asset(slideImage),

                // title: Text('title'),

                ),
          )
        ],
      ),
    );
  }
}
