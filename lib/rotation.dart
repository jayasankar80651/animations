import 'package:flutter/material.dart';

class RotationAnimationExample extends StatefulWidget {
  RotationAnimationExample({super.key});

  @override
  State<RotationAnimationExample> createState() =>
      _RotationAnimationExampleState();
}

class _RotationAnimationExampleState extends State<RotationAnimationExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation <double>? _animation;

  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..repeat();
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller!);
  }

  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns:_animation!,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text("Rotate me")),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller!.isAnimating) {
            _controller!.stop();
          } else {
            _controller!.repeat();
          }
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
