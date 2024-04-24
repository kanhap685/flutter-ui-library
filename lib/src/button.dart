import 'package:flutter/material.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

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
  final UiButtonEnum statusButton;
  final Color hoverColor;

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
    this.statusButton = UiButtonEnum.none,
    this.hoverColor = UiColors.greyColor,
  });

  @override
  State<UiButton> createState() => _UiButtonState();
}

class _UiButtonState extends State<UiButton> {
  bool _isDisable = false;
  bool _isLoading = false;
  bool _isHover = false;
  late Color backgroundColor;

  bool checkStatusOnPressed() {
    if (_isDisable ||
        widget.statusButton == UiButtonEnum.loading ||
        widget.statusButton == UiButtonEnum.disable ||
        _isLoading) {
      return false;
    }

    return true;
  }

  Color? handleBackgroundColor() {
    if (_isDisable && !_isLoading) {
      return widget.disableColor;
    }

    if (_isHover && !_isLoading) {
      return widget.hoverColor;
    }

    return widget.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.statusButton == UiButtonEnum.enable || widget.statusButton == UiButtonEnum.none) {
      _isDisable = false;
    }

    if (widget.statusButton == UiButtonEnum.disable) {
      _isDisable = true;
    }

    bool? isEnable = checkStatusOnPressed();
    Color? isBackgroundColor = handleBackgroundColor();

    return Container(
      margin: const EdgeInsets.only(bottom: 5, top: 5),
      width: widget.width,
      height: widget.height,
      child: GestureDetector(
        onTap: isEnable
            ? () {
                setState(() {
                  widget.onPressed();
                  _isDisable = widget.statusButton == UiButtonEnum.none ? false : true;
                  _isLoading = widget.statusButton == UiButtonEnum.none ? false : true;
                });
              }
            : null,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                widget.borderRadius == null ? 30.0 : widget.borderRadius!),
            color:
                isBackgroundColor, // _isDisable ? widget.disableColor : widget.backgroundColor,
            border: Border.all(
              color: widget.borderRadiusColor ?? const Color(0xFF000000),
              width: 1,
            ),
          ),
          child: widget.statusButton == UiButtonEnum.loading || _isLoading
              ? Center(
                  child: CircularProgressIndicator(
                      color: widget.loadingIconColor ?? UiColors.neutralsGrey,
                      strokeWidth: widget.strokeWidth ?? 4.0,
                      strokeAlign: widget.loadingIconWidth ?? 0.0),
                )
              : MouseRegion(
                  cursor: isEnable
                      ? SystemMouseCursors.click
                      : SystemMouseCursors.basic,
                  onEnter: (_) {
                    setState(() => _isHover = true);
                  },
                  onExit: (_) {
                    setState(() => _isHover = false);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: isEnable
                          ? () {
                              setState(() {
                                widget.onPressed();
                                _isDisable = widget.statusButton == UiButtonEnum.none
                                    ? false
                                    : true;
                                _isLoading = widget.statusButton == UiButtonEnum.none
                                    ? false
                                    : true;
                              });
                            }
                          : null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 3.0),
                            child: Text(
                              widget.title ?? 'Button',
                              style: widget.textStyle ??
                                  TextStyle(
                                    color: widget.fontColor ??
                                        const Color(0xFF000000),
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
        ),
      ),
    );
  }
}
