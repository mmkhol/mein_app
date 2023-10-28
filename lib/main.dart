import 'package:flutter/material.dart';
import 'package:meine_app/cart_pages.dart';
import 'package:meine_app/models/cart_model.dart';
import 'package:meine_app/pages/event_pages/festival.dart';
import 'package:meine_app/pages/event_pages/nudel.dart';
import 'package:meine_app/pages/menue_page.dart';
import 'package:meine_app/pages/start_pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartPage(),
      routes: {
        '/startpage': (context) => StartPage(),
        '/menupage': (context) => MenuPage(),
        '/festivalpage': (context) => FestivalPage(),
        '/nudelpage': (context) => Nudel(),
        '/cartpage': (context) => CartPage()
      },
    );
  }
}
