import 'package:flutter/material.dart';
import 'package:songontop/models/article.dart';

class ArticleCard extends StatelessWidget {
  ArticleCard({Key key, this.article}) : super(key: key);

  Article article;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/1.jpg",
        width: 50,
      ),
      title: Text(article.titre),
      subtitle: Text(article.contenu),
    );
  }
}
