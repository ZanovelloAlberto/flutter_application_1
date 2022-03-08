import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../components/maps.dart';
import '../components/swichImage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(children: [
      Flexible(
        flex: 4,
        child: const SwichImage(
          images: ["piscina_coperitna.jpg", "story.jpg", "activities.jpg"],
        ),
      ),
      Flexible(
        flex: 2,
        child: Container(
          color: Colors.white,
        ),
      )
    ]);
  }
}
