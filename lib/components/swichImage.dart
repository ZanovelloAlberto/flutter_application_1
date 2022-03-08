import 'package:flutter/material.dart';

class SwichImage extends StatefulWidget {
  const SwichImage({required this.images}) : super();
  final List<String> images;
  @override
  State<SwichImage> createState() => _SwichImageState();
}

class _SwichImageState extends State<SwichImage> {
  late int current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/${widget.images[current]}"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.all(50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                height: 50,
                width: 50,
                child: IconButton(
                  icon: const Icon(Icons.chevron_left),
                  onPressed: () {
                    setState(() => current =
                        (current - 1 + widget.images.length) %
                            widget.images.length);
                  },
                ),
              ),
            ),
          ),
          new Spacer(),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.all(50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                height: 50,
                width: 50,
                child: IconButton(
                  icon: const Icon(Icons.chevron_right),
                  onPressed: () {
                    setState(
                        (() => current = (current + 1) % widget.images.length));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
