import 'package:flutter/material.dart';

class Utils {
  static Color assignColor(int value) {
    switch (value) {
      case 1:
        return Colors.redAccent;
        break;
      case 2:
        return Colors.blueGrey;
        break;
      case 3:
        return Colors.amber;
        break;
      case 4:
        return Colors.blue;
        break;
      case 5:
        return Colors.greenAccent;
        break;
      case 6:
        return Colors.deepPurpleAccent;
        break;
      case 7:
        return Colors.purple;
        break;
      case 8:
        return Colors.yellow;
        break;
      default:
        return Colors.black;
    }
  }

  static Widget assignIcon(int value) {
    switch (value) {
      case 1:
        return Image.asset("assets/service-cloud.png");
        break;
      case 2:
        return Image.asset("assets/restaurant.png");
        break;
      case 3:
        return Image.asset("assets/pharmacie.png");
        break;
      case 4:
        return Image.asset("assets/chope-a-biere.png");
        break;
    }
  }
}
