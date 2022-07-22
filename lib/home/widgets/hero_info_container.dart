import 'package:flutter/material.dart';

class HeroInfoContainer extends StatelessWidget {
  const HeroInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 280,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Algum Texto'),
        ],
      ),
    );
  }
}
