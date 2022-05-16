import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test1_app/containts.dart';
import 'package:test1_app/screens/custom_1.dart';
import 'package:test1_app/screens/mcq_app.dart';
import 'package:test1_app/screens/youtube_video.screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

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
  'বিগত সালের /n প্রশ্নপত্র'
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CarouselSlider(
                      items: slideImage
                          .map((image) =>
                              Builder(builder: (BuildContext context) {
                                return Container(
                                  height: 120,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(image),
                                        fit: BoxFit.fill),
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
                        // height: 300,
                        viewportFraction: 1,
                        autoPlay: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex, count: slideImage.length),
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    childAspectRatio: 1.6,
                    crossAxisSpacing: 5,
                    // mainAxisSpacing: 5,
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => FreeClassVideo()));
                          },
                          child:
                              CustomCard(image: menuImage[0], title: title[0])),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => McqAppLogin()));
                          },
                          child:
                              CustomCard(image: menuImage[1], title: title[1])),
                      CustomCard(image: menuImage[2], title: title[2]),
                      CustomCard(image: menuImage[3], title: title[3]),
                      CustomCard(image: menuImage[4], title: title[4]),
                      CustomCard(image: menuImage[5], title: title[5]),
                      CustomCard(image: menuImage[6], title: title[6]),
                      CustomCard(image: menuImage[7], title: title[7]),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.grey.withOpacity(0.5),
                  color: Colors.yellow,
                  elevation: 10,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.person),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ধন্যবাদ😍',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'আমাদের কে সাপোর্ট করার জন্য  ও \nভবিষ্যতে আপসটি \n আরো উন্নয়নের জন্য প্লে স্টোরে \n আমাদের কে রেটিং দিন',
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
