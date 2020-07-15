import 'package:flutter/material.dart';
import 'package:posts/models/Post.dart';
import 'package:posts/views/home/home_viewmodel.dart';
import 'package:posts/widgets/cards/post_card.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    Provider.of<Post>(context, listen: false).getAll();
    return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
          centerTitle: true,
        ),
        body: FutureProvider(
          create: (context) => Provider.of<Post>(context).getAll(),
          builder: (context, data) {
            return ListView.separated(
              itemCount: Provider.of<Post>(context).posts.length,
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemBuilder: (context, index){
               Post post = Provider.of<Post>(context).posts[index];
                return PostCard(post);
              },
            );
          },
        )
     );
  }
}
