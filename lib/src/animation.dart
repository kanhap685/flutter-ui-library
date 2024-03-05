import 'package:flutter/material.dart';

class UiAnimation extends StatefulWidget {
  final Function onPressed;
  final dynamic child;

  const UiAnimation({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  State<UiAnimation> createState() => _UiAnimationState();
}

class _UiAnimationState extends State<UiAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 1.0, end: 0.5).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () => widget.onPressed(),
            child: Opacity(
              opacity: _animation.value,
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
