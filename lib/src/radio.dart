import 'package:flutter/material.dart';

class UiRadioButton extends StatefulWidget {
  final Function(dynamic) onSelected;
  final List<Map<String, dynamic>> options;
  final TextStyle? radioTextStyle;
  final ScrollPhysics? scrolling;
  final EdgeInsets? paddingRadio;
  final EdgeInsets? paddingIcon;
  final EdgeInsets? paddingList;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;
  final Widget? customDivider;
  final double? paddingTop;
  final double? paddingBottom;
  final double? minHeightItem;
  final Color? colorIcon;
  final bool? isShowRadioButton;
  final bool? isDivider;
  final bool isForceReset;
  final ScrollController? scrollController;
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;
  final Color? bulletColor;
  final Axis direction;

  const UiRadioButton({
    super.key,
    required this.onSelected,
    required this.options,
    this.radioTextStyle,
    this.scrolling,
    this.paddingRadio,
    this.titleTextStyle,
    this.subTitleTextStyle,
    this.colorIcon,
    this.customDivider,
    this.isDivider,
    this.minHeightItem,
    this.paddingIcon,
    this.isForceReset = false,
    this.paddingTop,
    this.paddingBottom,
    this.isShowRadioButton = true,
    this.scrollController,
    this.keyboardDismissBehavior,
    this.paddingList,
    this.bulletColor,
    this.direction = Axis.vertical,
  });

  @override
  State<UiRadioButton> createState() => _UiRadioButtonState();
}

class _UiRadioButtonState extends State<UiRadioButton> {
  dynamic selectedOptionId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              // scrollDirection: widget.direction, // Set the scroll direction
              shrinkWrap: true,
              children: widget.options
                  .map((option) => Theme(
                        data: Theme.of(context).copyWith(),
                        child: RadioListTile<dynamic>(
                          activeColor: widget.bulletColor,
                          title: Text(
                            option['value'],
                            style: widget.radioTextStyle,
                          ),
                          value: option['id'],
                          groupValue: selectedOptionId,
                          onChanged: (value) {
                            setState(() {
                              selectedOptionId = value;
                              widget.onSelected(option);
                            });
                          },
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Selected Option ID: $selectedOptionId',
            style: widget.radioTextStyle,
          ),
        ],
      ),
    );
  }
}
