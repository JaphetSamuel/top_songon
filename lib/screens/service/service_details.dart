import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:songontop/composants/commentTile.dart';
import 'package:songontop/composants/mapsingle.dart';
import 'package:songontop/models/service.dart';
import 'package:songontop/screens/commentview.dart';

class ServiceDetails extends StatelessWidget {
  ServiceDetails({Key key, this.service}) : super(key: key);

  var _scrollController = ScrollController();
  var commentSheetHeigth = 0.obs;

  Service service;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: BackButton(
                color: Colors.black,
              ),
              pinned: true,
              backgroundColor: Colors.white,
              title: Text(
                service.nom,
                style: GoogleFonts.lato(color: Colors.black),
              ),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/songon_map.jpg",
                      fit: BoxFit.cover,
                    ),
                    ClipOval(
                        child: Image.asset(
                      service.logoUrl,
                      width: 70,
                      fit: BoxFit.cover,
                    ))
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                height: Get.height,
                child: Column(
                  children: [
                    Container(
                      width: Get.width - 20,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(
                                leading: Icon(LineIcons.phone),
                                title: Text(service.contact1),
                                subtitle: Text('contact')),
                            ListTile(
                                leading: Icon(LineIcons.phone),
                                title: Text(service.contact2),
                                subtitle: Text('contact')),
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.dialpad_outlined),
                                    Text('composer')
                                  ],
                                )),
                            ListTile(
                                title: Text('Description'),
                                subtitle: Text(service.description))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 400,
                        width: Get.width - 20,
                        padding:
                            EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                        child: MapSingle(
                          service: service,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: Icon(
          Icons.comment,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
