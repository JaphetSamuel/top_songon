import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:songontop/models/categorie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'package:get/get.dart';
import 'package:songontop/utils/utilsfunc.dart';

import 'package:songontop/screens/serviceScreenView.dart';

class CategorieCard extends StatelessWidget {
  CategorieCard(this.categorie, {Key key}) : super(key: key) {
    switch (categorie.id) {
      case 1:
        _iconData = LineIcons.desktop;
        break;
      case 2:
        _iconData = FontAwesomeIcons.hamburger;
        break;
      case 3:
        _iconData = Icons.local_pharmacy_outlined;
        break;
      case 4:
        _iconData = LineIcons.boxOpen;
        break;
      case 5:
        _iconData = FontAwesomeIcons.school;
        break;
      case 6:
        _iconData = FontAwesomeIcons.hotel;
        break;
      case 7:
        _iconData = FontAwesomeIcons.building;
        break;
      case 8:
        _iconData = FontAwesomeIcons.hospital;
        break;
    }
  }

  Categorie categorie;
  Color _color;
  IconData _iconData;
  Widget _icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.to(() => ServiceScreenView(
                target: categorie.id - 1,
              ));
        },
        child: Container(
          height: 10,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                _iconData,
                color: Colors.black,
              ),
              Text(categorie.nom,
                  style: GoogleFonts.openSans(fontSize: 12),
                  textAlign: TextAlign.center)
            ],
          ),
        ));
  }
}
