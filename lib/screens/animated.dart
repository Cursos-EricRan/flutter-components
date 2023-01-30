import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  // Variables
  double _width = 100;
  double _height = 100;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadiusDirectional.circular(20);

  void onChangeShape() {
    // if (_width == 100 || _height == 100) {
    //   _width = 200;
    //   _height = 200;
    //   _color = Colors.indigo;
    //   _borderRadius = BorderRadiusDirectional.circular(20);
    // } else {
    //   _width = 100;
    //   _height = 100;
    //   _color = Colors.amber;
    //   _borderRadius = BorderRadiusDirectional.circular(10);
    // }

    final random = Random();
    _width = random.nextInt(300).toDouble() + 50;
    _height = random.nextInt(300).toDouble() + 50;
    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    _borderRadius =
        BorderRadiusDirectional.circular(random.nextInt(100).toDouble() + 20);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onChangeShape,
        child: const Icon(Icons.play_circle_fill_outlined),
      ),
    );
  }
}
