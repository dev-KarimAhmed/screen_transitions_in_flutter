import 'package:flutter/material.dart';

import 'home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Screen Animation Transition",
      home: HomeViwe(),
    );
  }
}
