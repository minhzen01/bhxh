import 'package:flutter/material.dart';

class Widget_Logo extends StatelessWidget {
  final String? link;
  final String? name;

  const Widget_Logo({Key? key,
    required this.link,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, left: 2),
      child: Column(

        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            width: 65,
            height: 65,
            child: Image.asset('$link'),
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.only(top: 5),
            child: Center(
                child: Text('$name', textAlign: TextAlign.center,)
            ),
          ),
        ],
      ),
    );
  }
}
