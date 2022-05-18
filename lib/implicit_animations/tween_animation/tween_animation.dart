import 'package:flutter/material.dart';
import 'package:flutter_animation/implicit_animations/tween_animation/title_widget.dart';

class TweenBuilder extends StatefulWidget {
  const TweenBuilder({Key? key}) : super(key: key);

  @override
  State<TweenBuilder> createState() => _TweenBuilderState();
}

class _TweenBuilderState extends State<TweenBuilder> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: TitleWidget()));
  }
}
