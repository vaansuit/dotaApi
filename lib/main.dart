import 'package:flutter/material.dart';

import 'home/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dota App with API',
      home: HomePage(),
    ),
  );
}
