import 'package:flutter/material.dart';

class UiRadioButton extends StatefulWidget {
  final Function(dynamic) onSelected;
  final List<Map<String, dynamic>> options;
  final EdgeInsets? paddingRadio;
  final Color? bulletColor;
  final Axis direction;
  final double? width;
  final double? height;
  final EdgeInsets? paddingRadioText;
  final TextStyle? radioTextStyle;

  const UiRadioButton({
    super.key,
    required this.onSelected,
    required this.options,
    this.paddingRadio,
    this.bulletColor,
    required this.direction,
    this.width,
    this.height,
    this.paddingRadioText,
    this.radioTextStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  });

  @override
  State<UiRadioButton> createState() => _UiRadioButtonState();
}

class _UiRadioButtonState extends State<UiRadioButton> {
  dynamic selectedOptionId;

  setSelectedRadioId(dynamic id) {
    setState(() {
      selectedOptionId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height ?? MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: widget.direction,
              itemCount: widget.options.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final option = widget.options[index];
                return Row(
                  children: <Widget>[
                    GestureDetector(
                      child: Padding(
                        padding: widget.paddingRadio ??
                            const EdgeInsets.only(
                                left: 0, right: 0, top: 0, bottom: 0),
                        child: Radio(
                          activeColor: widget.bulletColor,
                          value: option['id'],
                          groupValue: selectedOptionId,
                          onChanged: (val) {
                            widget.onSelected(option);
                            setSelectedRadioId(val);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: widget.paddingRadioText ??
                          const EdgeInsets.only(
                              left: 0, right: 0, top: 0, bottom: 0),
                      child: Text(
                        option['value'],
                        style: widget.radioTextStyle,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
