import 'package:flutter/material.dart';

class ImgBoxContainer extends StatelessWidget {
  const ImgBoxContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
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
