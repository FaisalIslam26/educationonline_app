import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      backgroundColor: Colors.grey,
      // Color(0xFFFFF176),

      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent),
            height: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Column(
                  children: [
                    SizedBox(
                      height: 500,
                      // width: 500,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: menuImage.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.8,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemBuilder: (context, index) => Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // color: Color(0xFFFFFDE7),
                          color: Colors.amber,
                          elevation: 20,
                          child: GridTile(
                            child: Image.asset(
                              menuImage[index],
                              fit: BoxFit.contain,
                              height: 40,
                              scale: 5,
                            ),
                            footer: GridTileBar(
                              leading: Text(
                                title[index],
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Color(0xFFFFF176),
                      elevation: 20,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ধন্যবাদ😍'),
                              Text(
                                'আমাদের কে সাপোর্ট করার জন্য  ও ভবিষ্যতে আপসটি \n আরো উন্নয়নের জন্য প্লে স্টোরে \n আমাদের কে রেটিং দিন',
                                maxLines: 4,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






//  Column(
//         children: [
//           Stack(
//             alignment: Alignment.bottomCenter,
//             children: [
//               CarouselSlider(
//                 items: slideImage
//                     .map((image) => Builder(builder: (BuildContext context) {
//                           return Container(
//                             height: 200,
//                             width: 500,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(40),
//                               image: DecorationImage(
//                                   image: AssetImage(image), fit: BoxFit.fill),
//                             ),
//                           );
//                         }))
//                     .toList(),
//                 options: CarouselOptions(
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       activeIndex = index;
//                     });
//                   },
//                   height: 300,
//                   viewportFraction: 1,
//                   autoPlay: true,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: AnimatedSmoothIndicator(
//                     activeIndex: activeIndex, count: slideImage.length),
//               ),
//             ],
//           ),
//           
//         ],
//       ),