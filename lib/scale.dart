import 'package:flutter/material.dart';

class ScaleTransmitionExample extends StatefulWidget {
  const ScaleTransmitionExample({super.key});

  @override
  State<ScaleTransmitionExample> createState() =>
      _ScaleTransmitionExampleState();
}

class _ScaleTransmitionExampleState extends State<ScaleTransmitionExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));
    _controller!.forward();
  }

  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation!,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text("Scale me")),
          ),
        ),
      ),
    );
  }
}
