import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../components/maps.dart';

class Where extends StatelessWidget {
  const Where();

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
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(children: [
            Flexible(
              flex: 4,
              child: Container(
                color: kPrimaryColor,
                child: GoogleMap(),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.white,
              ),
            )
          ]),
        ));
  }
}
