import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../components/maps.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(children: [
      Flexible(
        flex: 2,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Text("Titolo"),
              Text("data"),
            ],
          ),
        ),
      ),
      Flexible(
        flex: 4,
        child: Container(
          color: kPrimaryColor,
          child: GoogleMap(),
        ),
      ),
    ]);
  }
}
