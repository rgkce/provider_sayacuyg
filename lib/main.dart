import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/sayac_model.dart';
import 'screens/ana_ekran.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SayacModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaEkran(),
    );
  }
}
