import 'package:flutter/material.dart';

class SliderAnimatonExample extends StatefulWidget {
  SliderAnimatonExample({super.key});

  @override
  State<SliderAnimatonExample> createState() => _SliderAnimatonExampleState();
}

class _SliderAnimatonExampleState extends State<SliderAnimatonExample>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween<Offset>(
      begin: Offset(8.0, 2.0),
      end: Offset(0.0, 0.0),
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
      appBar: AppBar(title: Text("Slider_animation Example")),
      body: Center(
        child: SlideTransition(
          position: _animation!,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text("Slide me ")),
          ),
        ),
      ),
    );
  }
}
