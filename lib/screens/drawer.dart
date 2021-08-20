import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:songontop/controller/UserProfilController.dart';
import 'package:songontop/providers/servicepro.dart';
import 'package:songontop/screens/account/pages/login_page.dart';
import 'package:songontop/screens/map.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key key}) : super(key: key);

  UserProfilController _profilController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Get.width - 80,
      child: Column(
        children: [
          SizedBox(
            child: Center(
              child: UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset('assets/logo_songon.png'),
                decoration: BoxDecoration(color: Colors.green),
                accountEmail: Obx(() => Text(_profilController.email.value)),
                accountName: Text('Japhet'),
                arrowColor: Colors.green,
                onDetailsPressed: () {},
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => LoginPage());
            },
            leading: Icon(Icons.account_box),
            title: Text("Mon compte"),
          ),
          Divider(),
          ListTile(
            leading: Icon(LineIcons.addressBook),
            title: Text('Mon carnet'),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Get.to(() => MapPage());
            },
            leading: Icon(Icons.place),
            title: Text("Carte"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Paramettre"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Info"),
          ),
          Divider(),
          ListTile(
            onTap: () {
              var s = Servicepro();
              s.getServices();
            },
            leading: Icon(Icons.info),
            title: Text("Avis ou commentaire"),
          ),
        ],
      ),
    );
  }
}
