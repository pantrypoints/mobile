import 'dart:math';
import 'package:flutter/material.dart';
import 'package:prenuer/core/widgets/rotating_widget.dart';

class CustomRotationWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double startAngle;
  final bool reverse;

  const CustomRotationWidget(
      {Key? key,
      required this.duration,
      required this.child,
      this.startAngle = 0,
      this.reverse = false})
      : super(key: key);

  @override
  State<CustomRotationWidget> createState() => _WholeRotationWidgetState();
}

class _WholeRotationWidgetState extends State<CustomRotationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return RotatingWidget(animation: animation, child: widget.child);
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: widget.duration, vsync: this);
    animation = Tween<double>(
            begin: 0 + widget.startAngle ,
            end: (2 * pi) * (widget.reverse ? (-1) : 1))
        .animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
