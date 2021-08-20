import 'package:flutter/material.dart';
import 'package:songontop/composants/commentTile.dart';

class CommentView extends StatelessWidget {
  const CommentView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(children: [
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
            CommentTile(),
          ]),
        )
      ],
    );
  }
}
