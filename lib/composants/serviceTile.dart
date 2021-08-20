import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:songontop/models/service.dart';
import 'package:songontop/screens/service/service_details.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({Key key, this.service}) : super(key: key);
  final Service service;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      child: GestureDetector(
        onTap: () {
          Get.to(ServiceDetails(
            service: service,
          ));
        },
        child: ListTile(
          leading: Image.asset(service.logoUrl) ?? Icon(Icons.image_rounded),
          title: Text(
            service.nom,
            style: GoogleFonts.openSans(),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                service.description,
                style: GoogleFonts.openSans(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Icon(LineIcons.thumbsUp), Icon(LineIcons.save)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
