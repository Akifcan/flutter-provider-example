import 'package:flutter/material.dart';
import 'package:posts/helpers/helper.dart';
import 'package:posts/models/Post.dart';
import 'package:posts/theme/theme.dart';
import 'package:posts/widgets/cards/user_card.dart';

class PostCard extends StatelessWidget {
  final Post post;

  PostCard(this.post);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
            context: (context),
            builder: (context) => UserCard(post.userId));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(capitalize(post.title),
                  style: Theme.of(context).textTheme.headline1),
              Text('${capitalize(post.body).substring(0, 70)}...',
                  style: Theme.of(context).textTheme.bodyText1)
            ],
          ),
        ),
      ),
    );
  }
}
