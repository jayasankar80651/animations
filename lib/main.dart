import 'package:animation_widget/animations.dart';
import 'package:animation_widget/fadeanimation.dart';
import 'package:animation_widget/rotation.dart';
import 'package:animation_widget/scale.dart';
import 'package:animation_widget/slider_animation.dart';
import 'package:animation_widget/tweenanimation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TweenAnimationBuilderExample  (),
      debugShowCheckedModeBanner: false,
    );
    }
}

     