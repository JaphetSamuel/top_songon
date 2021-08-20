import 'package:flutter/material.dart';

class CategorieList extends StatelessWidget {
  const CategorieList({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        elevation: 0,
        leading: BackButton(color: Colors.black,),
      ),
          body: Center(
        child: Text("listes des categories"),
      ),
    );
  }
}

