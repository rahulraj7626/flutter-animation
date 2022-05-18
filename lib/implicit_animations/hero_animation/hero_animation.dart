import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    (context),
                    MaterialPageRoute(
                        builder: (_) => ImageView(
                              index: index,
                            )));
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                child: Hero(
                  tag: "abc$index",
                  child: Image.network(
                      "https://i.picsum.photos/id/185/536/354.jpg?hmac=9ARfT6fmTsEYKCaEW42cwv5qHt3DgH8d662IYItP1gA"),
                ),
              ),
            );
          }),
    );
  }
}

class ImageView extends StatefulWidget {
  final int index;
  const ImageView({Key? key, required this.index}) : super(key: key);

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Hero(
        tag: "abc" + widget.index.toString(),
        child: Image.network(
            "https://i.picsum.photos/id/185/536/354.jpg?hmac=9ARfT6fmTsEYKCaEW42cwv5qHt3DgH8d662IYItP1gA"),
      ),
    );
  }
}
