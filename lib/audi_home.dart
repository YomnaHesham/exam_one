import 'dart:ui';

import 'package:exam_one/see_more_card.dart';
import 'package:exam_one/best_seller_card.dart';
import 'package:exam_one/category_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';

class AudiHome extends StatefulWidget {
  static const String routName = "audi";

  AudiHome({super.key});

  @override
  State<AudiHome> createState() => _AudiHomeState();
}

class _AudiHomeState extends State<AudiHome> {
  List<String> categoryNames = ['Art', 'Business', 'Comedy', 'Drama'];

  final List<String> imgList = [
    'assets/images/tab1.png',
    'assets/images/tab2.png',
  ];

  int selsctedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 28, right:28 ,top: 46),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/audi_logo.png",
                    width: 165,
                    height: 40,
                  ),
                  Icon(
                    Icons.settings_outlined,
                    color: Color(0xFF4838D1),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              SeeMoreCard(lable: "Categories"),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(lable: "Art"),
                    SizedBox(
                      width: 16,
                    ),
                    CategoryCard(lable: "Business"),
                    SizedBox(
                      width: 16,
                    ),
                    CategoryCard(lable: "Comedy"),
                    SizedBox(
                      width: 16,
                    ),
                    CategoryCard(lable: "Drama"),
                  ],
                ),
              ),

              // Expanded(
              //   child: ListView.separated(
              //     separatorBuilder: (context, index) {
              //       return Container(
              //         width: 16,
              //       );
              //     },
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return CategoryCard(lable: categoryNames[index].toString());
              //     },
              //     itemCount: categoryNames.length,
              //   ),
              // ),


              SeeMoreCard(lable: "Recommended For You"),

              Builder(
                builder: (context) {
                  return CarouselSlider(
                    options: CarouselOptions(
                      height: 300,
                      enlargeCenterPage: false,
                      autoPlay: true,
                    ),
                    items: imgList
                        .map((item) =>
                        Container(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Center(
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.fill,
                                  height: 300,
                                  width: double.infinity,
                                )),
                          ),
                        ))
                        .toList(),
                  );
                },
              ),

              SeeMoreCard(lable: "Best Seller"),

              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Container(
                      width: 8,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return BestSellerCard();
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFFFFFFF),
          selectedItemColor: Color(0xFF4838D1),
          unselectedItemColor: Color(0xFF6A6A8B),

          // type: BottomNavigationBarType.fixed,
          currentIndex: selsctedIndex,
          onTap: (value) {
            selsctedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.document_scanner), label: "Library"),
          ],
        ),
      ),
    );
  }
}
