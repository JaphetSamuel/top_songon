import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Decorate {
  //ligne de decoration pour titre de section sur la page myhome
  static Widget ligneC(
      {Color couleur = Colors.purple, String titre, VoidCallback onTapPlus}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          children: [
            Text(
              titre,
              style: GoogleFonts.abel(),
            ),
          ],
        ),
        Positioned(
          right: 0,
            child: (onTapPlus != null)
                ? TextButton(
                    onPressed: onTapPlus,
                    child: Text("plus >"),
                  )
                : SizedBox())
      ],
    );
  }
}
