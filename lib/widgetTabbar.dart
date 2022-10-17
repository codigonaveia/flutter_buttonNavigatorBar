import 'package:flutter/material.dart';

class MyWidgetTabBar extends StatelessWidget {
  const MyWidgetTabBar({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Usando TabBar"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.cake)),
                Tab(icon: Icon(Icons.cloud))
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text("HOme")),
            Center(child: Text("Meus dados")),
            Center(child: Text("Login"))
          ]),
        ),
      ),
    );
  }
}
