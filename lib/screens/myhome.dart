import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:songontop/composants/categorie.dart';
import 'package:songontop/composants/swiper.dart';
import 'package:songontop/controller/UserProfilController.dart';
import 'package:songontop/providers/categoriepro.dart';
import 'package:songontop/screens/drawer.dart';

class MyHome extends StatelessWidget {
  MyHome({Key key}) : super(key: key);

  UserProfilController _profilController = Get.put(UserProfilController());

  Widget iconShow = Container(
    height: 20,
    decoration: BoxDecoration(color: Colors.white),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          LineIcons.avianex,
          color: Colors.black,
        ),
        Text('Pharmacie')
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[600],
        elevation: 0,
        title: Text("SONGON TOP", style: GoogleFonts.openSans(fontSize: 20)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Container(
        color: Colors.white10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                color: Colors.white10,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Recherches...',
                    suffixIcon: Icon(LineIcons.search),
                    border: InputBorder.none,
                  ),
                )),
            MySwiper(),
            Expanded(
              // flex: 2,
              child: GridView.count(
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 5.0,
                  //scrollDirection: Axis.horizontal,
                  crossAxisCount: 3,
                  children: [
                    ...Categoriepro.list.map((e) => CategorieCard(e)).toList(),
                    Icon(Icons.more_horiz)
                  ]),
            ),
            // Container(
            //   color: Colors.white,
            //   margin: EdgeInsets.symmetric(horizontal: 5.0),
            //   child: Align(
            //     alignment: Alignment.center,
            //     child: Text('A la une'),
            //   ),
            // ),
            // Container(
            //   color: Colors.white,
            //   margin: EdgeInsets.symmetric(vertical: 2),
            //   child: Column(
            //     children: [
            //       ListTile(
            //         leading: Image.asset("assets/images.jpg", width: 50),
            //         title: Text('Les nouveau commerçant de Diapoté'),
            //       ),
            //       ListTile(
            //         leading: Image.asset("assets/images.jpg", width: 50),
            //         title: Text('Les nouveau commerçant de Diapoté'),
            //       ),
            //       ListTile(
            //         leading: Image.asset("assets/images.jpg", width: 50),
            //         title: Text('Les nouveau commerçant de Diapoté'),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
