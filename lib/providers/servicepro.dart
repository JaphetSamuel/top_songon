import 'package:songontop/models/service.dart';
import 'package:songontop/providers/categoriepro.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get/get.dart';

class Servicepro extends GetConnect {
  String _url = 'https://fmxsoluckogqxocwxvxo.supabase.co';
  String _anonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyNDM2OTA3MiwiZXhwIjoxOTM5OTQ1MDcyfQ.4sTfcoZbnG3qBv_xKfiJy6e3L1DCLndrLH9-uOPrz1Q';

  static List<Service> list = [
    Service(
        nom: "SongonFM",
        description: "Radio communale de Songon",
        contact1: "+2250707479427",
        contact2: "050",
        logoUrl: "assets/img/songonfm.jpg",
        categorie: 1),
    Service(
        nom: "SongonFM",
        description: "Radio communale de Songon",
        contact1: "+2250707479427",
        contact2: "050",
        logoUrl: "assets/img/songonfm.jpg",
        categorie: 3),
    Service(
        nom: "SongonFM",
        description: "Radio communale de Songon",
        contact1: "+2250707479427",
        contact2: "050",
        logoUrl: "assets/img/songonfm.jpg",
        categorie: 3),
    Service(
        nom: "SongonFM",
        description: "Radio communale de Songon",
        contact1: "+2250707479427",
        contact2: "050",
        logoUrl: "assets/img/songonfm.jpg",
        categorie: 4),
    Service(
        nom: "Restaurant Bleu",
        description: "Resto upé de songon",
        contact1: "+2250707479427",
        contact2: "050",
        logoUrl: "assets/img/logo_songon.png",
        categorie: 4),
  ];

  Future<dynamic> getServices() async {
    String _restUrl = Supabase(url: _url, anonKey: _anonKey).client.restUrl;
    var result = await get(_restUrl + "/service");
    print(result.body);
    return result;
  }

  static List<List<Service>> getListServiceByCategorie() {
    List<List<Service>> _result = [];

    for (int i = 0; i < Categoriepro.list.length; i++) {
      List<Service> _services = [];
      for (int j = 1; j < list.length - 1; j++) {
        Service _s = list[j];

        if (_s.categorie == i) {
          print(i);
          _services.add(_s);
        }
      }
      _result.add(_services);
    }

    return _result;
  }
}
