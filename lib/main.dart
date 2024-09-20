import 'package:digi_app/routes/routes.dart';
import 'package:digi_app/utils/consts/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Digi App',
      theme: ThemeData(
        colorSchemeSeed: primaryColor,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
