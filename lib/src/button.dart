import 'package:flutter/material.dart';
import 'package:flutter_ui_library/src/log_developer_color.dart';

class UiButton extends StatefulWidget {
  final String? title;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback onPressed;
  final double? borderRadius;
  final Color? borderRadiusColor;
  final Color? disableColor;
  final Color? loadingIconColor;
  final double? strokeWidth;
  final double? loadingIconWidth;
  final String statusButton;

  const UiButton({
    super.key,
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
    required this.onPressed,
    this.disableColor = const Color(0xFFD9D9D9),
    this.loadingIconColor,
    this.strokeWidth,
    this.loadingIconWidth,
    required this.statusButton,
  });

  @override
  State<UiButton> createState() => _UiButtonState();
}

class _UiButtonState extends State<UiButton> {
  bool _isDisable = false;

  bool checkStatusOnPressed() {
    if (_isDisable ||
        widget.statusButton == 'loading' ||
        widget.statusButton == 'disable') {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.statusButton == 'enable') {
      _isDisable = false;
    }

    if (widget.statusButton == 'disable') {
      _isDisable = true;
    }

    bool isEnable = checkStatusOnPressed();

    return Container(
      margin: const EdgeInsets.only(bottom: 5, top: 5),
      width: widget.width,
      height: widget.height,
      child: GestureDetector(
        onTap: isEnable == true
            ? () => {
                  widget.onPressed(),
                  setState(() => _isDisable = true),
                }
            : null,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                widget.borderRadius == null ? 30.0 : widget.borderRadius!),
            color: _isDisable ? widget.disableColor : widget.backgroundColor,
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
