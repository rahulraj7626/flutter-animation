import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: const Text(
        "Title of the App",
        style: TextStyle(
            fontSize: 40, color: Colors.green, fontWeight: FontWeight.w600),
      ),
      duration: const Duration(seconds: 3),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double val, Widget? child) {
        return Opacity(
          opacity: val,
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(color: Colors.blue[100]),
            child: Padding(
              padding: EdgeInsets.only(top: val * 100),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
