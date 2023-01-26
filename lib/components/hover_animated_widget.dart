import 'package:animated_sign_up/constants/colors.dart';
import 'package:flutter/material.dart';

class HoverAnimatedWidget extends StatefulWidget {
  final Size size;
  final double distance;
  final Color color;
  final Widget child;
  final BoxBorder? border;
  const HoverAnimatedWidget({
    super.key,
    required this.size,
    required this.distance,
    required this.color,
    required this.child,  this.border,
  });

  @override
  State<HoverAnimatedWidget> createState() => _HoverAnimatedWidgetState();
}

class _HoverAnimatedWidgetState extends State<HoverAnimatedWidget> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: widget.size.height - 1,
            width: widget.size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
          ),
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(
              milliseconds: 400,
            ),
            bottom: hover ? widget.distance : 0,
            right: hover ? widget.distance : 0,
            child: InkWell(
              onTap: () {},
              onHover: (val) {
                setState(() {
                  hover = val;
                });
              },
              child: AnimatedContainer(
                curve: Curves.easeInOut,
                duration: const Duration(
                  milliseconds: 400,
                ),
                height: widget.size.height,
                width: widget.size.width,
                decoration: BoxDecoration(
                  border: widget.border,
                  borderRadius: BorderRadius.circular(12),
                  color: hover ? widget.color : BACKGROUND_COLOR,
                ),
                child: widget.child,
              ),
            ),
          )
        ],
      ),
    );
  }
}
