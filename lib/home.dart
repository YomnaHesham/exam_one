import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  static const String routName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = [
    Image.asset("assets/images/IOS.jpeg"),
    Image.asset("assets/images/IOS.jpeg"),
    Image.asset("assets/images/IOS.jpeg"),
    Image.asset("assets/images/IOS.jpeg"),
    Image.asset("assets/images/IOS.jpeg"),
    Image.asset("assets/images/IOS.jpeg"),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hello",),
          backgroundColor: Colors.amber,
          actions: [
            badges.Badge(
              badgeContent: Text('3'),
              child: Icon(Icons.settings),
            ),
           SizedBox(
             width: 10,
           ),
          ],
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                // scrollDirection: Axis.vertical,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: items,
            ),
            SmoothPageIndicator(
              controller: PageController(initialPage: currentIndex),
              // PageController
              count: items.length,
              effect: WormEffect(activeDotColor: Colors.amber),
              // your preferred effect
              onDotClicked: (index) {},
            ),
          ],
        ),
      ),
    );
  }
}
