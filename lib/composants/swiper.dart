import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

class MySwiper extends StatelessWidget {
  const MySwiper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Swiper(
        itemBuilder: (context, i) {
          return Image.asset(
            "assets/songon_map.jpg",
            height: 300,
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        autoplay: true,
      ),
    );
  }
}
