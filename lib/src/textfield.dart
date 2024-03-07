import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

class UiTextField extends StatefulWidget {
  final TextStyle? textStyle;
  final EdgeInsets? contentPadding;
  final String? hintText;
  final OutlineInputBorder? border;
  final OutlineInputBorder? focusedBorder;
  final bool showSuccessIcon;
  final bool showLoadingIcon;
  final EdgeInsets? paddingSuffixIcon;
  final double? widthSuffixIcon;
  final double? heightSuffixIcon;
  final dynamic successIcon;
  final dynamic loadingIcon;
  final BoxConstraints? suffixIconConstraints;
  final TextInputType? keyboardType;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final int? maxLines;
  final dynamic maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final bool? cursorOpacityAnimates;
  final Color? cursorColor;
  final Color? cursorErrorColor;
  final Brightness? keyboardAppearance;
  final void Function(String) onChanged;

  const UiTextField({
    super.key,
    this.textStyle = const TextStyle(
      color: UiColors.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    this.hintText = 'Enter your text here...',
    this.border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    this.focusedBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: UiColors.allFbbFbb60, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    this.showSuccessIcon = false,
    this.showLoadingIcon = false,
    this.paddingSuffixIcon = const EdgeInsets.only(right: 20.0),
    this.widthSuffixIcon = 24.0,
    this.heightSuffixIcon = 24.0,
    this.successIcon = const Icon(Icons.check, color: UiColors.successColor),
    this.loadingIcon = const CircularProgressIndicator(
      strokeWidth: 2.0,
    ),
    this.suffixIconConstraints = const BoxConstraints(
      minWidth: 0.0,
      minHeight: 0.0,
    ),
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.textDirection = TextDirection.ltr,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.enabled = true,
    this.cursorWidth = 1.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates = false,
    this.cursorColor = UiColors.blackColor,
    this.cursorErrorColor = UiColors.failColor,
    this.keyboardAppearance = Brightness.light,
    required this.onChanged,
  });

  @override
  State<UiTextField> createState() => _UiTextFieldState();
}

class _UiTextFieldState extends State<UiTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            TextFormField(
              style: widget.textStyle,
              decoration: InputDecoration(
                contentPadding: widget.contentPadding,
                hintText: widget.hintText,
                border: widget.border,
                focusedBorder: widget.focusedBorder,
                suffixIcon: widget.showSuccessIcon
                    ? Container(
                        padding: widget.paddingSuffixIcon,
                        child: SizedBox(
                          width: widget.widthSuffixIcon,
                          height: widget.heightSuffixIcon,
                          child: widget.successIcon,
                        ),
                      )
                    : widget.showLoadingIcon
                        ? Container(
                            padding: widget.paddingSuffixIcon,
                            child: SizedBox(
                              width: widget.widthSuffixIcon,
                              height: widget.heightSuffixIcon,
                              child: widget.loadingIcon,
                            ),
                          )
                        : null,
                suffixIconConstraints: widget.suffixIconConstraints,
              ),
              keyboardType: widget.keyboardType,
              textAlign: widget.textAlign,
              textAlignVertical: widget.textAlignVertical,
              textDirection: widget.textDirection,
              readOnly: widget.readOnly,
              autofocus: widget.autofocus,
              obscureText: widget.obscureText,
              maxLines: widget.maxLines,
              maxLength: widget.maxLength,
              inputFormatters: widget.inputFormatters,
              // [
              //   widget.inputFormatters
              //   // FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Zก-ฮะ-๙]"))
              // ],
              enabled: widget.enabled,
              cursorWidth: widget.cursorWidth,
              cursorHeight: widget.cursorHeight,
              cursorRadius: widget.cursorRadius,
              cursorOpacityAnimates: widget.cursorOpacityAnimates,
              cursorColor: widget.cursorColor,
              cursorErrorColor: widget.cursorErrorColor,
              keyboardAppearance: widget.keyboardAppearance,
              onChanged: (value) => {widget.onChanged!(value)},
            ),
          ],
        ),
      ),
    );
  }
}
