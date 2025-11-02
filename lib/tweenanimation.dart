import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatefulWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  State<TweenAnimationBuilderExample> createState() =>
      _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState
    extends State<TweenAnimationBuilderExample> {
  bool _isLarge = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Twee Animation Builder Example")),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 100, end: _isLarge ? 200 : 100),
          duration: Duration(seconds: 2),
          builder: (context, size, child) {
            return Container(
              height: size,
              width: size,
              color: Colors.blue,
              child: child,
            );
          },
          child: Center(child: Text("Animate")),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isLarge=!_isLarge;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
