import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import '../components/maps.dart';
import '../components/responsive.dart';
import '../style.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(children: [
      Flexible(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: Styles.defaultBorderRadius,
          ),
          padding: EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Dove",
                          style: TextStyle(fontSize: 40),
                        )),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: ''''Centro Sportivo "La Maggiolina"
via Molinare, 1 - 31030 Castello di Godego [Treviso - Veneto]
Tel. 0423 468376 - e-mail: agoracasagialla@libero.it''',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Expanded(
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Align(
              //       alignment: Alignment.centerRight,
              //       child: Image.asset("assets/astranaut.png"),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: Container(
              //       decoration: const BoxDecoration(
              //         color: Colors.white,
              //         shape: BoxShape.circle,
              //       ),
              //       height: 50,
              //       width: 50,
              //       child: IconButton(
              //         icon: const Icon(Icons.chevron_right),
              //         onPressed: () {},
              //       ),
              //     ),
              //   ),
              // ),
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
