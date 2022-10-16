import 'package:flutter/material.dart';

class art extends StatelessWidget {
  const art(
      {super.key,
      required int size,
      required EdgeInsets padding,
      required int width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
