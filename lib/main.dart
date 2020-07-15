import 'package:flutter/material.dart';
import 'package:posts/constants/routes/routes.dart';
import 'package:posts/models/Post.dart';
import 'package:posts/theme/theme.dart';
import 'package:posts/views/home/home_view.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Post(),
        ),
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post',
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      initialRoute: HOME,
      routes: {
        HOME: (context) => HomeView()
      },
    );
  }
}