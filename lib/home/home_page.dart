import 'package:flutter/material.dart';

import 'widgets/hero_info_container.dart';
import 'widgets/img_container_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Row(
              children: const [
                ImgBoxContainer(),
                SizedBox(
                  width: 5,
                ),
                HeroInfoContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
