import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:songontop/composants/serviceTile.dart';
import 'package:songontop/models/service.dart';
import 'package:songontop/providers/categoriepro.dart';
import 'package:songontop/providers/servicepro.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ServiceScreenView extends StatefulWidget {
  ServiceScreenView({Key key, this.target = 0}) : super(key: key);
  final int target;

  @override
  _ServiceScreenViewState createState() => _ServiceScreenViewState();
}

class _ServiceScreenViewState extends State<ServiceScreenView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  void slideCategorie(int i) {
    setState(() {
      this._pageController.jumpToPage(i);
    });
  }

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: this.widget.target);
    _tabController = TabController(
        initialIndex: this.widget.target,
        length: Categoriepro.list.length,
        vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // _pageController.jumpToPage(this.widget.target);

    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text("Services",
              style: GoogleFonts.abel(
                color: Colors.black,
              )),
          actions: [IconButton(icon: Icon(LineIcons.search), onPressed: null)],
          bottom: TabBar(
            controller: _tabController,
            onTap: slideCategorie,
            labelColor: Colors.red,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.orangeAccent,
            isScrollable: true,
            tabs: Categoriepro.list
                .map((e) => Tab(
                      child: Hero(
                        tag: e.id,
                        child: Text(e.nom),
                      ),
                    ))
                .toList(),
          ),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (i) {
            setState(() {
              this._tabController.animateTo(i);
            });
          },
          children: Categoriepro.list.map((e) {
            if (e.service.length == 0) {
              return Center(
                child: Text("aucun elements trouvés"),
              );
            } else {
              return ListView(
                  children: e.service
                      .map((s) => ServiceTile(
                            service: s,
                          ))
                      .toList());
            }
          }).toList(),
        ));
  }
}
