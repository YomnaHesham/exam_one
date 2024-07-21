import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam_one/exercise_card.dart';
import 'package:exam_one/moody_see_more.dart';
import 'package:exam_one/react_img.dart';
import 'package:exam_one/feature_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyScreen extends StatefulWidget {
  static const String routName = "moody";

  MoodyScreen({super.key});

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  int selsctedIndex = 0;
  int currentIndex = 0;
  final vibesItem = [
    FeatureCard(),
    FeatureCard(),
    FeatureCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            // color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/moody_logo.png",
                      width: 120,
                      height: 40,
                    ),
                    Image.asset(
                      "assets/images/notification.png",
                      width: 24,
                      height: 24,
                    ),

                    // badges.Badge(
                    //   badgeContent: Text('0'),
                    //   child: Icon(
                    //     Icons.notifications_none,
                    //     size: 32,
                    //     color: Color(0xFF101828),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: GoogleFonts.inder(
                        textStyle: TextStyle(
                          color: Color(0xFF371B34),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      "Sara Rose",
                      style: GoogleFonts.inder(
                        textStyle: TextStyle(
                          color: Color(0xFF371B34),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "How are you feeling today ?",
                    style: GoogleFonts.inder(
                      textStyle: TextStyle(
                        color: Color(0xFF371B34),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReactImg(
                      image: "love",
                      lable: "Love",
                    ),
                    ReactImg(
                      image: "cool",
                      lable: "Cool",
                    ),
                    ReactImg(
                      image: "happy",
                      lable: "Happy",
                    ),
                    ReactImg(
                      image: "sad",
                      lable: "Sad",
                    ),
                  ],
                ),
                MoodySeeMore(
                  lable: "Feature",
                ),
                // FeatureCard(),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: vibesItem,
                ),
                SizedBox(
                  height: 16,
                ),
                SmoothPageIndicator(
                  controller: PageController(initialPage: currentIndex),
                  count: vibesItem.length,
                  effect: WormEffect(
                    dotWidth: 6,
                    dotHeight: 6,
                    activeDotColor: Color(0xFF98A2B3),
                    dotColor: Color(0xFFD9D9D9),
                  ),
                  // your preferred effect
                  onDotClicked: (index) {},
                ),

                MoodySeeMore(
                  lable: "Exercise",
                ),

                Row(
                  children: [
                    ExerciseCard(
                      lable: "Relaxation",
                      color: 0xFFF9F5FF,
                      img: "relax",
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    ExerciseCard(
                      lable: "Meditation",
                      color: 0xFFFDF2FA,
                      img: "metitation",
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    ExerciseCard(
                      lable: "Beathing",
                      color: 0xFFFFFAF5,
                      img: "beathing",
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    ExerciseCard(
                      lable: "Yoga",
                      color: 0xFFF0F9FF,
                      img: "yoga",
                    ),
                  ],
                ),
                // GridView.builder(
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     mainAxisSpacing: 24,
                //   ),
                //   itemBuilder: (context, index) {
                //     return ExerciseCard();
                //   },
                //   itemCount: 2,
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFFFFFFF),
          selectedItemColor: Color(0xFF027A48),
          unselectedItemColor: Color(0xFF667085),
          currentIndex: selsctedIndex,
          onTap: (value) {
            selsctedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: ".",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "."),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "."),
          ],
        ),
      ),
    );
  }
}
