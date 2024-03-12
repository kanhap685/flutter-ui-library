import 'package:flutter/material.dart';

class UiAlertDialog extends StatelessWidget {
  final Widget? icon;
  final EdgeInsetsGeometry iconPadding;
  final Color? iconColor;
  final Widget? title;
  final EdgeInsetsGeometry titlePadding;
  final TextStyle? titleTextStyle;
  final Widget? content;
  final EdgeInsetsGeometry contentPadding;
  final TextStyle? contentTextStyle;
  final List<Widget>? actions;
  final EdgeInsetsGeometry actionsPadding;
  final MainAxisAlignment? actionsAlignment;
  final OverflowBarAlignment? actionsOverflowAlignment;
  final VerticalDirection? actionsOverflowDirection;
  final double? actionsOverflowButtonSpacing;
  final EdgeInsetsGeometry? buttonPadding;
  final Color? backgroundColor;
  final double? elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final String? semanticLabel;
  final EdgeInsets insetPadding;
  final Clip clipBehavior;
  final ShapeBorder? shape;
  final AlignmentGeometry? alignment;
  final bool scrollable;

  const UiAlertDialog({
    super.key,
    this.icon,
    this.iconPadding = EdgeInsets.zero,
    this.iconColor,
    this.title,
    this.titlePadding =
        const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
    this.titleTextStyle = const TextStyle(fontWeight: FontWeight.bold),
    this.content = const Text('This is a custom dialog'),
    this.contentPadding = const EdgeInsets.all(24.0),
    this.contentTextStyle = const TextStyle(color: Colors.grey),
    this.actions,
    this.actionsPadding = const EdgeInsets.all(8.0),
    this.actionsAlignment = MainAxisAlignment.center,
    this.actionsOverflowAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.semanticLabel,
    this.insetPadding =
        const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    this.clipBehavior = Clip.none,
    this.shape,
    this.alignment,
    this.scrollable = true,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: title,
        icon: icon,
        content: content,
        contentPadding: contentPadding,
        contentTextStyle: contentTextStyle,
        actions: actions,
        actionsPadding: actionsPadding,
        actionsAlignment: actionsAlignment,
        actionsOverflowAlignment: actionsOverflowAlignment,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
        buttonPadding: buttonPadding,
        backgroundColor: backgroundColor,
        elevation: elevation,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        semanticLabel: semanticLabel,
        insetPadding: insetPadding,
        clipBehavior: clipBehavior,
        shape: shape,
        alignment: alignment,
        scrollable: scrollable,
      ),
    );
  }
}
