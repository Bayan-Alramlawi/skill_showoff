import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late BuildContext navContext;
  late AnimationController _animationController;
  AnimationController get animationController => _animationController;

  set setAnimationController(AnimationController value) {
    _animationController = value;
  }
}