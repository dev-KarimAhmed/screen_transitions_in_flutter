// 1- normal navigation 
// 2- build page transition class & extends PageRouteBuilder
// 3- scale transition
// 4- duration of the transition
// 6- slide transition
// 7- rotation transition
// 8- curve of the transition
// 9- enum to define the transition type (easily switch between them)

import 'package:flutter/material.dart';

enum TransitionType { scale, slide, rotation }

class PageTransitions extends PageRouteBuilder {
  final Widget screen;
  final TransitionType transitionType;
  PageTransitions({required this.screen, required this.transitionType})
      : super(
          // transitionDuration: const Duration(milliseconds: 45300),
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              screen,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            // suppose that height 800 px and width 400 px
            // for scale transition
            var scaleTween = Tween(begin: 0.0, end: 1.0);
            var scaleAnimation = scaleTween.animate(animation);

            // for slide transition
            var slideTween = Tween(
                begin: const Offset(1.0, 0.5), end: const Offset(0.0, 0.0));
            var slideAnimation = slideTween.animate(animation);

            // for rotation transition
            var rotationTween = Tween(begin: 0.0, end: 1.0);
            var rotationAnimation = CurvedAnimation(
                parent: rotationTween.animate(animation), curve: Curves.easeIn);

            switch (transitionType) {
              case TransitionType.scale:
                return ScaleTransition(
                  scale: scaleAnimation,
                  child: child,
                );
              case TransitionType.slide:
                return SlideTransition(
                  position: slideAnimation,
                  child: child,
                );
              
              default:
              return RotationTransition(turns: rotationAnimation , child: child,);
            }
          },
        );
}
