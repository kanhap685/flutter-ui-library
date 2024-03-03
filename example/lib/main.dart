// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Storybook(
        initialStory: 'UiRadioButton',
        stories: [
          /// ##################### Example UI Button #####################
          Story(
            name: 'UiButton',
            builder: (context) => Scaffold(
              body: SizedBox(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UiButton(
                        title: 'Submit',
                        onPressed: () {
                          /// Your onPressed logic here
                          logWarning('TODO >>> Your onPressed logic here');
                        },
                        statusButton: 'enable',
                        backgroundColor: UiColors.allFbbFbb40,
                        hoverColor: UiColors.allFbbFbb50,
                      ),
                      UiButton(
                        title: 'Disable',
                        statusButton: 'disable',
                        onPressed: () {
                          /// Your onPressed logic here
                          logWarning('TODO >>> Your onPressed logic here');
                        },
                      ),
                      UiButton(
                        onPressed: () {
                          /// Your onPressed logic here
                          logWarning('TODO >>> Your onPressed logic here');
                        },
                        title: 'Loading',
                        statusButton:
                            'loading', // 'enable'  , 'disable' , 'loading'
                      ),
                      UiButton(
                        onPressed: () {
                          /// Your onPressed logic here
                          logWarning('TODO >>> Your onPressed logic here');
                        },
                        title: 'Add On',
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
                        loadingIconColor:
                            const Color.fromARGB(255, 250, 63, 12),
                        strokeWidth: 4.0,
                        loadingIconWidth: 0.0,
                        statusButton:
                            'enable', // 'enable'  , 'disable' , 'loading'
                        backgroundColor: UiColors.primaryColor,
                        hoverColor: UiColors.allStarStar60,
                      )
                    ]),
              ),
            ),
          ),

          /// ##################### Example UI RadioButton #####################
          Story(
            name: 'UiRadioButton',
            builder: (context) => Scaffold(
              body: SizedBox(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UiRadioButton(
                          onSelected: (value) {
                            /// Your onPressed logic here
                            logWarning(
                                'Todo >>> Your onSelected logic here $value');
                          },
                          options: [
                            {'id': 1, 'value': 'Option 1'},
                            {'id': 2, 'value': 'Option 2'},
                            {'id': 3, 'value': 'Option 3'},
                          ],
                          // selectedOptionId: 1,
                          radioTextStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          bulletColor: Colors.green,
                          direction: Axis.vertical,
                          height: 200.0,
                          width: MediaQuery.of(context).size.width - 50,
                          paddingRadioText: const EdgeInsets.only(
                              left: 5, right: 20, top: 5, bottom: 8),
                          paddingRadio: const EdgeInsets.only(
                              left: 0, right: 0, top: 5, bottom: 8)),
                      UiRadioButton(
                          onSelected: (value) {
                            /// Your onPressed logic here
                            logWarning(
                                'Todo >>> Your onSelected logic here $value');
                          },
                          options: [
                            {'id': 1, 'value': 'Option 1'},
                            {'id': 2, 'value': 'Option 2'},
                            {'id': 3, 'value': 'Option 3'},
                          ],
                          selectedOptionId: 2,
                          radioTextStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          bulletColor: Colors.green,
                          direction: Axis.horizontal,
                          height: 200.0,
                          width: MediaQuery.of(context).size.width,
                          paddingRadioText: const EdgeInsets.only(
                              left: 5, right: 20, top: 5, bottom: 8),
                          paddingRadio: const EdgeInsets.only(
                              left: 0, right: 0, top: 5, bottom: 8)),
                    ]),
              ),
            ),
          ),

          /// ##################### Example UI Checkbox #####################
          Story(
            name: 'UiCheckbox',
            builder: (context) => Scaffold(
              body: SizedBox(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UiCheckbox(
                        onSelected: (value) {
                          logWarning(
                              'Todo >>> Your onSelected logic here $value');
                        },
                        options: [
                          {'id': 1, 'value': 'Option 1', 'checked': false},
                          {'id': 2, 'value': 'Option 2', 'checked': false},
                          {'id': 3, 'value': 'Option 3', 'checked': false},
                        ],
                        checkboxTextStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        bulletColor: Colors.green,
                        direction: Axis.vertical,
                        height: 200.0,
                        width: MediaQuery.of(context).size.width - 50,
                        paddingCheckboxText: const EdgeInsets.only(
                            left: 5, right: 20, top: 5, bottom: 8),
                        paddingCheckbox: const EdgeInsets.only(
                            left: 0, right: 0, top: 5, bottom: 8),
                      ),
                      UiCheckbox(
                          onSelected: (value) {
                            /// Your onPressed logic here
                            logWarning(
                                'Todo >>> Your onSelected logic here $value');
                          },
                          options: [
                            {'id': 1, 'value': 'Option 1', 'checked': false},
                            {'id': 2, 'value': 'Option 2', 'checked': true},
                            {'id': 3, 'value': 'Option 3', 'checked': false},
                          ],
                          checkboxTextStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          bulletColor: Colors.green,
                          direction: Axis.horizontal,
                          height: 200.0,
                          width: MediaQuery.of(context).size.width,
                          paddingCheckboxText: const EdgeInsets.only(
                              left: 5, right: 20, top: 5, bottom: 8),
                          paddingCheckbox: const EdgeInsets.only(
                              left: 0, right: 0, top: 5, bottom: 8)),
                    ]),
              ),
            ),
          ),

          /// ##################### Example UI Box #####################
          Story(
            name: 'UiBox',
            builder: (context) => Scaffold(
              body: SizedBox(
                width: double.infinity,
                child: DraggableCard(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      child: Text('ffff'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
