library show_hide_fab;

import 'package:flutter/material.dart';

class ShowHideFAB extends StatelessWidget {
  final Duration animationDuration;
  final FloatingActionButton fab;
  bool shouldShow;

  ShowHideFAB({
    @required this.fab,
    this.animationDuration = kThemeAnimationDuration,
    this.shouldShow = true,
  }) {
    assert(fab != null, 'fab cannot be null');
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: animationDuration,
      child: shouldShow ? fab : Offstage(),
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
    );
  }
}
