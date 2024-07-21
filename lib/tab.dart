// import 'package:exam_one/category_card.dart';
// import 'package:flutter/material.dart';
// import 'package:exam_one/best_seller_card.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:exam_one/see_more_card.dart';
//
// class TabScreen extends StatelessWidget {
//   static const String routName = "tab";
//   List<String> categoryNames = ['Art', 'Business', 'Comedy', 'Drama'];
//   final List<String> imgList = [
//     'assets/images/tab1.png',
//     'assets/images/tab2.png',
//   ];
//
//   TabScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return TabBar(
//                     tabs: [
//                       Tab(
//                         icon: CategoryCard(
//                             lable: categoryNames[index].toString()),
//                       ),
//                       Tab(
//                         icon: CategoryCard(
//                             lable: categoryNames[index].toString()),
//                       ),
//                       Tab(
//                         icon: CategoryCard(
//                             lable: categoryNames[index].toString()),
//                       ),
//                       Tab(
//                         icon: CategoryCard(
//                             lable: categoryNames[index].toString()),
//                       ),
//                     ],
//                   );
//                 },
//                 itemCount: categoryNames.length,
//               ),
//             ),
//             TabBarView(
//               children: <Widget>[
//                 Column(
//                   children: [
//                     SeeMoreCard(lable: "Recommended For You"),
//                     Builder(
//                       builder: (context) {
//                         return CarouselSlider(
//                           options: CarouselOptions(
//                             height: 300,
//                             // viewportFraction: 1.0,
//                             enlargeCenterPage: false,
//                             autoPlay: false,
//                           ),
//                           items: imgList
//                               .map(
//                                 (item) => Container(
//                                   child: Container(
//                                     margin:
//                                         EdgeInsets.symmetric(horizontal: 16),
//                                     child: Center(
//                                         child: Image.asset(
//                                       item,
//                                       fit: BoxFit.fill,
//                                       height: 300,
//                                       width: double.infinity,
//                                     )),
//                                   ),
//                                 ),
//                               ).toList(),
//                         );
//                       },
//                     ),
//                     SeeMoreCard(lable: "Best Seller"),
//                     Expanded(
//                       child: ListView.separated(
//                         separatorBuilder: (context, index) {
//                           return Container(
//                             width: 8,
//                           );
//                         },
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (context, index) {
//                           return BestSellerCard();
//                         },
//                         itemCount: 5,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Center(
//                   child: Image.asset("assets/images/tab1.png"),
//                 ),
//                 Center(
//                   child: Image.asset("assets/images/tab2.png"),
//                 ),
//                 Center(
//                   child: Image.asset("assets/images/tab1.png"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:exam_one/category_card.dart';
import 'package:flutter/material.dart';
import 'package:exam_one/best_seller_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam_one/see_more_card.dart';

class TabScreen extends StatelessWidget {
  static const String routName = "tab";
  List<String> categoryNames = ['Art', 'Business', 'Comedy', 'Drama'];
  final List<String> imgList = [
    'assets/images/tab1.png',
    'assets/images/tab2.png',
  ];

  TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(
                icon: CategoryCard(lable: "Art"),
              ),
              Tab(
                icon: CategoryCard(lable: "Business"),
              ),
              Tab(
                icon: CategoryCard(lable: "Comedy"),
              ),
              Tab(
                icon: CategoryCard(lable: "Drama"),
              ),
            ],
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: TabBarView(
              children: <Widget>[
                Column(
                  children: [
                    SeeMoreCard(lable: "Recommended For You"),
                    Builder(
                      builder: (context) {
                        return CarouselSlider(
                          options: CarouselOptions(
                            height: 300,
                            autoPlay: true,
                          ),
                          items: imgList
                              .map((item) => Container(
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 16),
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
                Center(
                  child: Image.asset("assets/images/tab1.png"),
                ),
                Center(
                  child: Image.asset("assets/images/tab2.png"),
                ),
                Center(
                  child: Image.asset("assets/images/tab1.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
