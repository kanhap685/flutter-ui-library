import 'package:flutter/material.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

class UiCard extends StatefulWidget {
  final Color? surfaceTintColor;
  final Color? shadowColor;
  final EdgeInsets? margin;
  final double? height;

  final List<Widget> children;

  const UiCard(
      {super.key,
      this.surfaceTintColor,
      this.shadowColor,
      this.margin,
      this.height,
      required this.children});

  @override
  State<UiCard> createState() => _UiCardState();
}

class _UiCardState extends State<UiCard> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: SizedBox(
        height: widget.height ?? screenHeight,
        child: Card(
          shadowColor: widget.shadowColor ?? UiColors.greyColor,
          surfaceTintColor: widget.surfaceTintColor ?? UiColors.bitterLime800,
          margin: widget.margin ??
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          child: const Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: [],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // ),
      ),
      // ),
    );
  }
}
