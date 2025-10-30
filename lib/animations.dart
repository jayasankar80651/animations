import 'package:flutter/material.dart';

class AnimationsWidgetExample extends StatefulWidget {
  AnimationsWidgetExample({super.key});

  @override
  State<AnimationsWidgetExample> createState() => _AnimationsWidgetExampleState();
}

class _AnimationsWidgetExampleState extends State<AnimationsWidgetExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;

  void animatedContainer() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("animations examples")),
      body: Center(
        child: AnimatedContainer(
          height: _height,
          width:_width,
          color:_color,
          duration: Duration(seconds: 2),
          curve: Curves.easeInExpo,
          child: GestureDetector(
            onTap:() {
              animatedContainer();
            },
            child: FlutterLogo(
              size: 75,
            ),
          ),
        )
        ),
    );
  }
}
