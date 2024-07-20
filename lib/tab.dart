import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  static const String routName = "tab";

  TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom:  TabBar(
            tabs:[
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[

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
    );
  }
}
