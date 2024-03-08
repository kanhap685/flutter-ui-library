import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Storybook(
      initialStory: 'UiAlertDialog',
      plugins: [
        ThemeModePlugin(initialTheme: ThemeMode.light),
      ],
      showPanel: true,
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
                    title: 'Default Button',
                    onPressed: () {
                      /// Your onPressed logic here
                      logWarning('TODO >>> Your onPressed logic here');
                    },
                    backgroundColor: UiColors.bitterLime600,
                    hoverColor: UiColors.bitterLime500,
                  ),
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
                    statusButton: 'loading',
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
                    loadingIconColor: const Color.fromARGB(255, 250, 63, 12),
                    strokeWidth: 4.0,
                    loadingIconWidth: 0.0,
                    statusButton: 'enable', // 'enable'  , 'disable' , 'loading'
                    backgroundColor: UiColors.primaryColor,
                    hoverColor: UiColors.allStarStar60,
                  )
                ],
              ),
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
                        /// Your onSelected logic here
                        logWarning(
                            'Todo >>> Your onSelected logic here $value');
                      },
                      options: const [
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
                        /// Your onSelected logic here
                        logWarning(
                            'Todo >>> Your onSelected logic here $value');
                      },
                      options: const [
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
                ],
              ),
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
                      logWarning('Todo >>> Your onSelected logic here $value');
                    },
                    options: const [
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
                        /// Your onSelected logic here
                        logWarning(
                            'Todo >>> Your onSelected logic here $value');
                      },
                      options: const [
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
                ],
              ),
            ),
          ),
        ),

        /// ##################### Example UI TextField #####################
        Story(
          name: 'UiTextField',
          builder: (context) => Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UiTextField(
                    onChanged: (value) => {
                      /// Your onChanged logic here
                      logWarning('Todo >>> Your onChanged logic here $value')
                    },
                  ),
                  UiTextField(
                    showLoadingIcon: true,
                    onChanged: (value) => {
                      /// Your onChanged logic here
                      logWarning('Todo >>> Your onChanged logic here $value')
                    },
                  ),
                  UiTextField(
                    showSuccessIcon: true,
                    onChanged: (value) => {
                      /// Your onChanged logic here
                      logWarning('Todo >>> Your onChanged logic here $value')
                    },
                  ),
                  UiTextField(
                    autofocus: true,
                    hintText: 'Enter your ก-ฮะ-๙ here...',
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[ก-ฮะ-๙]"))
                    ],
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: UiColors.allFbbFbb60, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    onChanged: (value) => {
                      /// Your onChanged logic here
                      logWarning('Todo >>> Your onChanged logic here $value')
                    },
                  ),
                  UiTextField(
                    hintText: 'Enter your a-zA-Z here...',
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                    ],
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: UiColors.greenColor700, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    onChanged: (value) => {
                      /// Your onChanged logic here
                      logWarning('Todo >>> Your onChanged logic here $value')
                    },
                  ),
                  UiTextField(
                    hintText: 'Enter your int here...',
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    ],
                    onChanged: (value) => {
                      /// Your onChanged logic here
                      logWarning('Todo >>> Your onChanged logic here $value')
                    },
                  ),
                ],
              ),
            ),
          ),
        ),

        /// ##################### Example UI Dialog  #####################
        Story(
          name: 'UiAlertDialog',
          builder: (context) => Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [UiAlertDialog(title: 'Title', message: 'Message')],
              ),
            ),
          ),
        ),

        //   border = const OutlineInputBorder(
        // borderRadius: BorderRadius.all(Radius.circular(30.0)),

        /// ##################### Example UI Animation #####################
        // Story(
        //   name: 'UiAnimation',
        //   builder: (context) => Scaffold(
        //     body: SizedBox(
        //       width: double.infinity,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           UiAnimation(
        //               onPressed: () {
        //                 /// Your onPressed logic here
        //                 logWarning('Todo >>> Your onPressed logic here');
        //               },
        //               child: Image.asset(
        //                 'assets/images/giphy.gif',
        //                 width: 100,
        //               )),
        //           UiAnimation(
        //             onPressed: () {
        //               /// Your onPressed logic here
        //               logWarning('Todo >>> Your onPressed logic here');
        //             },
        //             child: UiButton(
        //               title: 'Default Button',
        //               onPressed: () {
        //                 /// Your onPressed logic here
        //                 logWarning('TODO >>> Your onPressed logic here');
        //               },
        //               backgroundColor: UiColors.bitterLime600,
        //               hoverColor: UiColors.bitterLime500,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),

        /// ##################### Example UI Animation #####################
      ],
    );
  }
}
