import 'package:counter/homepage.dart';
import 'package:counter/homepage_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomepageHelper(),
        )
      ],
      child: MaterialApp(
        title: 'Counter App',
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
