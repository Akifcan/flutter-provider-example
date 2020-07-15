import 'package:flutter/material.dart';
import 'package:posts/models/User.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class UserCard extends StatelessWidget {
  
  final int userId;
  User user = User();

  UserCard(this.userId);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      child: FutureBuilder(
        future: user.getUser(userId),
        builder: (context,snapshot) {
          User user = snapshot.data;
          return snapshot.hasData ?  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(user.name),
              Text(user.username),
              GestureDetector(
               onTap: ()async{
                 print('alahını sikeyim');
                 await launch('mailto:${user.email}');
               }, 
                child: Text(user.email))
            ],
          ) : Center(child: CircularProgressIndicator()) ;
        },
      ),
    );
  }
}