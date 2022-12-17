import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String isim;
  const HomePage({super.key, required this.isim});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
            child: Column(
          children: [Text("HoşGeldin " + widget.isim)],
        )),
      
    );
  }
}
