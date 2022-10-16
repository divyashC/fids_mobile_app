import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class art extends StatelessWidget {
  const art({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
