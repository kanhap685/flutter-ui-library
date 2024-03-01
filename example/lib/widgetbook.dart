import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

class HotReload extends StatelessWidget {
  const HotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13ProMax,
          ],
        ),
        TimeDilationAddon(),
        GridAddon(50),
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
        BuilderAddon(
          name: 'white',
          builder: (context, child) => ColoredBox(
            color: Colors.transparent,
            child: child,
          ),
        ),
      ],
      directories: [
        WidgetbookFolder(
          name: 'Widgets',
          children: [
            WidgetbookComponent(
              name: 'Example Button',
              useCases: [
                // * Example Enable *** Ex1 ***
                WidgetbookUseCase(
                    name: 'Enable',
                    builder: (context) => UiButton(
                          title: 'Submit',
                          onPressed: () {
                            /// Your onPressed logic here
                            logWarning('TODO >>> Your onPressed logic here');
                          },
                          statusButton: 'enable',
                        )),

                // * Example Loading ***Ex2***
                WidgetbookUseCase(
                    name: 'Loading',
                    builder: (context) => UiButton(
                          onPressed: () {
                            /// Your onPressed logic here
                            logWarning('TODO >>> Your onPressed logic here');
                          },
                          title: 'Loading',
                          statusButton:
                              'loading', // 'enable'  , 'disable' , 'loading'
                        )),

                // * Example *** Ex3 ***
                WidgetbookUseCase(
                    name: 'Disable',
                    builder: (context) => UiButton(
                          title: 'Disable',
                          statusButton: 'disable',
                          onPressed: () {
                            /// Your onPressed logic here
                            logWarning('TODO >>> Your onPressed logic here');
                          },
                        )),

                WidgetbookUseCase(
                    name: 'Add-On',
                    builder: (context) => UiButton(
                          onPressed: () {
                            /// Your onPressed logic here
                            logWarning('TODO >>> Your onPressed logic here');
                          },
                          title: 'Add On',
                          backgroundColor: const Color(0xFFFFFFFF),
                          width: 150,
                          height: 50,
                          textStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          borderRadius: 30.0,
                          borderRadiusColor: const Color(0xFF000000),
                          disableColor: const Color(0xFFD9D9D9),
                          loadingIconColor: const Color(0xFFD9D9D9),
                          strokeWidth: 4.0,
                          loadingIconWidth: 0.0,
                          statusButton:
                              'enable', // 'enable'  , 'disable' , 'loading'
                        )),
              ],
            ),
            // ---------------------------------------------------------------------
            WidgetbookComponent(
              name: 'Example UiBottomSheet',
              useCases: [
                // * Default UiBottomSheet *** Ex1 ***
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: UiRadioButton(
                      onSelected: (value) {
                        logWarning(
                            'TODO >>> Your onSelected logic here value: $value');
                      },
                      options: const [
                        {'id': 1, 'value': 'Option 1'},
                        {'id': 2, 'value': 'Option 2'},
                        {'id': 3, 'value': 'Option 3'},
                        {'id': 4, 'value': 'Option 4'},
                      ],
                      radioTextStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      bulletColor: Colors.red,
                      direction: Axis.horizontal, // กำหนดเป็นแนวนอน
                    ),
                  ),
                ),
              ],
            ),
            // ---------------------------------------------------------------------
          ],
        ),
      ],
    );
  }
}
