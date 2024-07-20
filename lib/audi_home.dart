import 'dart:ui';

import 'package:exam_one/adui_btn.dart';
import 'package:exam_one/best_seller_card.dart';
import 'package:exam_one/category_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';


class AudiHome extends StatelessWidget {
  static const String routName = "audi";

  AudiHome({super.key});

  final items = [
    Image.asset("assets/images/tab1.png"),
    Image.asset("assets/images/tab2.png"),
    Image.asset("assets/images/tab1.png"),
    Image.asset("assets/images/tab2.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 46),
          // color: Colors.red,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Btn(
                    color: 0xFF010104,
                    lable: 'Categories',
                  ),
                  Btn(
                    color: 0xFF4838D1,
                    lable: 'See more',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CategoryItem(lable: "Art"),
                  CategoryItem(lable: "Business"),
                  CategoryItem(lable: "Comedy"),
                  CategoryItem(lable: "Drama"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Btn(
                    color: 0xFF010104,
                    lable: 'Recommended For You',
                  ),
                  Btn(
                    color: 0xFF4838D1,
                    lable: 'See more',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {},
                ),
                items: items,
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Btn(
                    color: 0xFF010104,
                    lable: 'Best Seller',
                  ),
                  Btn(
                    color: 0xFF4838D1,
                    lable: 'See more',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              BestSellerCard(),

              // Card(color: Color(0xFFF5F5FA),),
              // DefaultTabController(
              //   length: 4,
              //   child: Column(
              //     children: [
              //       TabBar(
              //         tabs: [
              //           Tab(
              //             icon: Icon(Icons.cloud_outlined),
              //           ),
              //           Tab(
              //             icon: Icon(Icons.beach_access_sharp),
              //           ),
              //           Tab(
              //             icon: Icon(Icons.brightness_5_sharp),
              //           ),
              //           Tab(
              //             icon: Icon(Icons.brightness_5_sharp),
              //           ),
              //         ],
              //       ),
              //       TabBarView(
              //         children: <Widget>[
              //
              //           Center(
              //             child: Image.asset("assets/images/tab1.png"),
              //           ),
              //           Center(
              //             child: Image.asset("assets/images/tab2.png"),
              //           ),
              //           Center(
              //             child: Image.asset("assets/images/tab1.png"),
              //           ),
              //           Center(
              //             child: Image.asset("assets/images/tab2.png"),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
