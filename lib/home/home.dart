import 'package:flutter/material.dart';
import 'package:flutter_animation/implicit_animations/hero_animation/hero_animation.dart';
import '../implicit_animations/animated_container/animated_container.dart';
import '../implicit_animations/tween_animation/tween_animation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> nameList = [
    {
      "name": "Animated Container",
      "route": const AnimContainer(),
    },
    {
      "name": "Tween Animation",
      "route": const TweenBuilder(),
    },
    {
      "name": "Hero Animation",
      "route": const HeroAnimation(),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flutter animations",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (_) => nameList[index]["route"]));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: containerWidget(
                          nameList[index]["name"],
                          index + 1,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

Widget containerWidget(
  name,
  int intx,
) {
  return ListTile(
    leading: Text(
      intx.toString(),
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    title: Text(
      name,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    trailing: GestureDetector(child: const Icon(Icons.arrow_forward_ios)),
  );
}
