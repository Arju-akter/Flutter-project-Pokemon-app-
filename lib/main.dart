import 'package:flutter/material.dart';
import 'package:pokemon_1/pages/details_page.dart';

import 'Widgets/pokemon_card.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
