import 'package:flutter/material.dart';

class AnimContainer extends StatefulWidget {
  const AnimContainer({Key? key}) : super(key: key);

  @override
  State<AnimContainer> createState() => _AnimContainerState();
}

class _AnimContainerState extends State<AnimContainer> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 100;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        color: _color,
        width: _width,
        duration: const Duration(seconds: 3),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _margin = 20;
                });
              },
              child: const Text("animate margin")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
              child: const Text("animate width")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: const Text("animate opacity")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.green;
                });
              },
              child: const Text("animate color")),
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 2),
            child: const Text(
              "Opacity Text",
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
