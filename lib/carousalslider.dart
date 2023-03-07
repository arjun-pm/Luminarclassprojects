import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CaroSlider(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class CaroSlider extends StatelessWidget {
  const CaroSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("C Slider"),
      ),

      body: CarouselSlider(
        items: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/HOTEL cover.jpg"),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/Hotel2.jpg"),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/Hotel3.jpg"),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(
                    "assets/images/roberto-nickson-emqnSQwQQDo-unsplash.jpg"),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/images/HOTEL cover.jpg"),
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: .3,
          height: 200,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.bounceOut,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enableInfiniteScroll: true,
        ),
      ),
    );
  }
}
