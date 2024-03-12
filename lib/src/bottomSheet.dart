import 'package:flutter/material.dart';
import 'enum.dart';

class UiBottomSheet extends StatefulWidget {
  final bottomsheet_enum screenType;
  final double? height;

  const UiBottomSheet({
    super.key,
    required this.screenType,
    this.height = 200,
  });

  @override
  State<UiBottomSheet> createState() => _UiBottomSheetState();
}

class _UiBottomSheetState extends State<UiBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return widget.screenType == bottomsheet_enum.customized
        ? Stack(
            children: [
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: SizedBox(
                    height: widget.height,
                    child: const Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text('This is a modal bottom sheet.'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )
        : widget.screenType == bottomsheet_enum.full
            ? Stack(
                children: [
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: const Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text('This is a modal bottom sheet.'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              )
            : Stack(
                children: [
                  const SizedBox(
                    height: double.infinity,
                    child: Center(
                      child: Text('This is a modal bottom sheet.'),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              );
  }
}
