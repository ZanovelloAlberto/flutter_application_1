import 'package:flutter/material.dart';

class TabLayout extends StatelessWidget {
  const TabLayout({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
        height: size.height,
        width: size.width,
        color: Color.fromARGB(255, 15, 255, 10),
        // decoration: const BoxDecoration(
        // image: DecorationImage(
        //     image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        //     ),
        child: Container(margin: const EdgeInsets.all(50.0), child: child));
  }
}
