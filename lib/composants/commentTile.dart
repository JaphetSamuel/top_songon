import 'package:flutter/material.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "assets/img_3.jpg",
        width: 40,
      ),
      title: Text("Djama Anbroise"),
      subtitle: Column(
        children: [
          Text(
              'Je pense que cette initiative est bonne pour nos affaire ici à Agban'),
          Row(
            children: [
              Icon(
                Icons.star_rate,
                color: Colors.yellow,
                size: 13,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.yellow,
                size: 13,
              ),
              Icon(
                Icons.star_rate,
                color: Colors.yellow,
                size: 13,
              ),
              Icon(
                Icons.star_half,
                color: Colors.yellow,
                size: 13,
              )
            ],
          ),
        ],
      ),
    );
  }
}
