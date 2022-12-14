import 'package:flutter/material.dart';
import 'package:peliculas/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: "home",
      routes: {
        "home": (_)=>  HomeScreen(),
        "details":(_) => DetailsScreen(), 
      },
      theme: ThemeData.light().copyWith(
        appBarTheme:const AppBarTheme(
         color: Colors.red, 
        )
      )
    
    );
  }
}