class Service {
  String nom;
  String logoUrl;
  String coverUrl;
  String description;
  String contact1;
  String contact2;
  double lat;
  double long;
  int stars;
  int categorie;

  Service(
      {this.nom,
      this.logoUrl,
      this.coverUrl,
      this.description,
      this.contact1,
      this.contact2,
      double lat,
      double long,
      int stars,
      int categorie: 2});
}
