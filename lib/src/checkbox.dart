import 'package:flutter/material.dart';

class UiCheckbox extends StatefulWidget {
  final Function(dynamic) onSelected;
  final List<Map<String, dynamic>> options;
  final EdgeInsets? paddingCheckbox;
  final Color? bulletColor;
  final Axis direction;
  final double? width;
  final double? height;
  final EdgeInsets? paddingCheckboxText;
  final TextStyle? checkboxTextStyle;

  const UiCheckbox({
    super.key,
    required this.onSelected,
    required this.options,
    this.paddingCheckbox,
    this.bulletColor,
    required this.direction,
    this.width,
    this.height,
    this.paddingCheckboxText,
    this.checkboxTextStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  });

  @override
  State<UiCheckbox> createState() => _UiCheckboxState();
}

class _UiCheckboxState extends State<UiCheckbox> {
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
                var options = widget.options[index];
                return Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          options['checked'] = !options['checked'];
                        });
                        widget.onSelected(options['id']);
                      },
                      child: Padding(
                        padding: widget.paddingCheckbox ??
                            const EdgeInsets.only(
                                left: 0, right: 0, top: 0, bottom: 0),
                        child: Checkbox(
                          activeColor: widget.bulletColor,
                          value: options['checked'],
                          onChanged: (bool? value) {
                            setState(() {
                              options['checked'] = value ?? false;
                            });
                            widget.onSelected(options);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: widget.paddingCheckboxText ??
                          const EdgeInsets.only(
                              left: 0, right: 0, top: 0, bottom: 0),
                      child: Text(
                        options['value'],
                        style: widget.checkboxTextStyle,
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
