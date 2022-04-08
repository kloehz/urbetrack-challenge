import 'package:flutter/material.dart';

class EnteringAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const EnteringAnimation({ Key? key, required this.child, required this.duration }) : super(key: key);

  @override
  State<EnteringAnimation> createState() => _EnteringAnimationState();
}

class _EnteringAnimationState extends State<EnteringAnimation> with SingleTickerProviderStateMixin {

  AnimationController? controller;
  late Animation<double> animation;
  late Animation<double> opacity;

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    controller = AnimationController(duration: widget.duration, vsync: this);
    animation = Tween<double>(begin: -100, end: 0).animate(CurvedAnimation(parent: controller!, curve: Curves.easeOut));
    opacity = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: controller!, curve: const Interval(0, 1)));
    controller!.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller!,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(animation.value, 0),
          child: Opacity(
            opacity: opacity.value,
            child: widget.child,
          ),
        );
      }
    );
  }
}