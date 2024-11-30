import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/Splash/Presentation/views/Splash_View.dart';
import 'constants.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
      ) ,
      home: const SplachView(),
    );
  }
}
