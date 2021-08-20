import 'service.dart';

class Categorie {
  String nom;
  int id;
  int nbServices;
  List<Service> service;

  Categorie({this.nom, this.id, this.nbServices, this.service});
}
