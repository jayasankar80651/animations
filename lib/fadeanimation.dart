import 'package:flutter/material.dart';

class FadeAnimationExample extends StatefulWidget {
 FadeAnimationExample({super.key});

  @override
  State<FadeAnimationExample> createState() => _FadeAnimationExampleState();
}

class _FadeAnimationExampleState extends State<FadeAnimationExample>with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;
  @override
  void initState(){
    super.initState();
    _animationController=AnimationController(duration: Duration(seconds: 2),vsync: this);
    _animation=CurvedAnimation(parent: _animationController!, curve: Curves.easeIn);
  }
  @override
  void dispose(){
    super.dispose();
    _animationController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("fade animation examples")),
      body:Center(
        child: FadeTransition(
          opacity:_animation! ,
          child: Container(
            height:200,
            width:200,
            color:Colors.blue,
            child: Center(child: Text("Hello flutter")),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(
          _animationController!.isCompleted)
          {
            _animationController!.reverse();
          }
          else{
            _animationController!.forward();
          }

      },
      child: Icon(Icons.play_arrow_outlined),),
      
      
    );
  }
}