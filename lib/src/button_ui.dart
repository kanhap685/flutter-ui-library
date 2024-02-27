import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String? title;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onPress;
  final double? borderRadius;
  final Color? borderRadiusColor;
  final Color? hoverColor;
  final Color? loadingIconColor;
  final double? strokeWidth;
  final double? loadingIconWidth;
  final String? statusButton;
  
  const Button(
      {super.key,
      this.title,
      this.backgroundColor = const Color(0xFFFFFFFF),
      this.width = 150,
      this.height = 50,
      this.textStyle,
      this.borderRadius,
      this.borderRadiusColor,
      this.fontSize,
      this.fontWeight,
      this.fontColor,
      this.onPress,
      this.hoverColor = const Color(0xFFD9D9D9),
      this.loadingIconColor,
      this.strokeWidth,
      this.loadingIconWidth,
      this.statusButton = 'enable',
      });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isDisable = false;

  @override
  Widget build(BuildContext context) {
    if (widget.statusButton == 'enable' || widget.statusButton == null) {
      _isDisable = false;
    }

    if (widget.statusButton == 'disable' || widget.statusButton == null) {
      _isDisable = true;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 5, top: 5),
      width: widget.width,
      height: widget.height,
      child: GestureDetector(
        onTap: () {
          if (_isDisable ||
              widget.statusButton == 'loading' ||
              widget.statusButton == 'disable') return;

          widget.onPress?.call();
          setState(() => _isDisable = true);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                widget.borderRadius == null ? 30.0 : widget.borderRadius!),
            color: _isDisable ? widget.hoverColor : widget.backgroundColor,
            border: Border.all(
              color: widget.borderRadiusColor ?? const Color(0xFF000000),
              width: 1,
            ),
          ),
          child: widget.statusButton == 'loading'
              ? Center(
                  child: CircularProgressIndicator(
                      color: widget.loadingIconColor ?? const Color(0xFFD9D9D9),
                      strokeWidth: widget.strokeWidth ?? 4.0,
                      strokeAlign: widget.loadingIconWidth ?? 0.0),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: Text(
                          widget.title ?? 'Button',
                          style: widget.textStyle ??
                              TextStyle(
                                color:
                                    widget.fontColor ?? const Color(0xFF000000),
                                fontSize: widget.fontSize ?? 14,
                                fontWeight:
                                    widget.fontWeight ?? FontWeight.normal,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
