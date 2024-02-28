import 'package:flutter/material.dart';

class UiRadioButton extends StatefulWidget {
  final Function(dynamic) onSelected;
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

  const UiRadioButton({
    super.key,
    required this.onSelected,
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
  });
  @override
  State<UiRadioButton> createState() => _UiRadioButtonState();
}

class _UiRadioButtonState extends State<UiRadioButton> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RadioListTile<String>(
          title: Text('Option 1'),
          value: 'Option 1',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Option 2'),
          value: 'Option 2',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
          },
        ),
        RadioListTile<String>(
          title: Text('Option 3'),
          value: 'Option 3',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
          },
        ),
        SizedBox(height: 16),
        Text('Selected Option: $selectedOption'),
      ],
    );
  }
}
