import 'package:flutter/material.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<RoutesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Flight Routes'),
      centerTitle: true,
      backgroundColor: Colors.red,
    ));
  }
}
