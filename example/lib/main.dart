import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<List<String>> groups = [
    ['Group 1 Item 1', 'Group 1 Item 2'],
    ['Group 2 Item 1', 'Group 2 Item 2', 'Group 2 Item 3'],
  ];

  @override
  Widget build(BuildContext context) {
    return Storybook(
      initialStory: 'ExpansionTile',
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
                    statusButton: UiButtonEnum.enable,
                    backgroundColor: UiColors.allFbbFbb40,
                    hoverColor: UiColors.allFbbFbb50,
                  ),
                  UiButton(
                    title: 'Disable',
                    statusButton: UiButtonEnum.disable,
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
                    statusButton: UiButtonEnum.loading,
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
                    statusButton: UiButtonEnum.enable,
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
                      children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return UiAlertDialog(
                                    // Use the UiAlertDialog class
                                    // icon: Image.asset(
                                    //   'assets/images/flutter.826x1024.png',
                                    //   width: 20,
                                    // ),
                                    // iconPadding: const EdgeInsets.all(16.0),
                                    // iconColor: Colors.blue,
                                    title: const Text('Custom Dialog'),
                                    // titlePadding: const EdgeInsets.symmetric(
                                    //     horizontal: 24.0, vertical: 16.0),
                                    // titleTextStyle: const TextStyle(
                                    //     fontWeight: FontWeight.bold),
                                    // content:
                                    //     const Text('This is a custom dialog'),
                                    // contentPadding: const EdgeInsets.all(24.0),
                                    // contentTextStyle:
                                    //     const TextStyle(color: Colors.grey),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          // Add your action here
                                          logWarning(
                                              'Todo >>> Your onPressed logic here action 1');
                                        },
                                        child: const Text('Action 1'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Add your action here
                                          logWarning(
                                              'Todo >>> Your onPressed logic here action 2');
                                        },
                                        child: const Text('Action 2'),
                                      ),
                                    ],
                                    // actionsPadding: const EdgeInsets.all(8.0),
                                    // actionsAlignment: MainAxisAlignment.center,
                                    // actionsOverflowAlignment:
                                    //     OverflowBarAlignment.end,
                                    // actionsOverflowDirection:
                                    //     VerticalDirection.down,
                                    // actionsOverflowButtonSpacing: 8.0,
                                    // buttonPadding: const EdgeInsets.symmetric(
                                    //     horizontal: 16.0),
                                    // backgroundColor: Colors.white,
                                    // elevation: 4.0,
                                    // shadowColor: Colors.black,
                                    // surfaceTintColor: Colors.blue,
                                    // semanticLabel: 'Your Semantic Label',
                                    // insetPadding: const EdgeInsets.all(16.0),
                                    // clipBehavior: Clip.hardEdge,
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius:
                                    //         BorderRadius.circular(8.0)),
                                    // alignment: Alignment.center,
                                    // scrollable: true,
                                  );
                                },
                              );
                            },
                            child: const Text('Show Dialog'),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return UiAlertDialog(
                                    title: const Text('Custom Dialog'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          // Add your action here
                                          logWarning(
                                              'Todo >>> Your onPressed logic here action 1');
                                        },
                                        child: const Text('Action 1'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Add your action here
                                          logWarning(
                                              'Todo >>> Your onPressed logic here action 2');
                                        },
                                        child: const Text('Action 2'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text('Show Dialog'),
                          ),
                        ),
                      ]))),
        ),

        /// ##################### Example UI Checkbox #####################
        Story(
          name: 'UiBottomSheet',
          builder: (context) => Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return const UiBottomSheet(
                                screenType: bottomsheet_enum.full);
                          },
                        );
                      },
                      child: const Text('Show Modal full screen'),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const UiBottomSheet(
                                screenType: bottomsheet_enum.half);
                          },
                        );
                      },
                      child: const Text('Show Modal half screen'),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return const UiBottomSheet(
                                screenType: bottomsheet_enum.customized);
                          },
                        );
                      },
                      child: const Text('Show Modal customized'),
                    ),
                  ),

                  // ---------------------------------------------------
                ],
              ),
            ),
          ),
        ),

        /// ##################### Example UI Animation #####################
        Story(
          name: 'UiBottomSheet1',
          builder: (context) => Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.music_note),
                                  title: Text('Music'),
                                  onTap: () {
                                    // Handle music item tap
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.photo),
                                  title: Text('Photos'),
                                  onTap: () {
                                    // Handle photos item tap
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.video_label),
                                  title: Text('Videos'),
                                  onTap: () {
                                    // Handle videos item tap
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                          // YourBottomSheetWidget(); // ใส่ Widget ของ Bottom Sheet ที่คุณต้องการแสดง
                        },
                      );
                    },
                    child: Text('Show Bottom Sheet'),
                  ),
                ],
              ),
            ),
          ),
        ),

        /// ##################### Example UI Modal #####################
        Story(
          name: 'UiModal',
          builder: (context) => Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            insetPadding: const EdgeInsets.all(28.0),
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    color: Colors.red,
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'This is a custom modal',
                                            style: TextStyle(fontSize: 24.0),
                                          ),
                                        ),
                                      ],
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
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  right: 10,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          // Add your action here
                                          logWarning(
                                              'Todo >>> Your onPressed logic here action 1');
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Action 1'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Add your action here
                                          logWarning(
                                              'Todo >>> Your onPressed logic here action 2');
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Action 2'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: const Text('Show Ui Modal'),
                  ),
                ],
              ),
            ),
          ),
        ),

        /// ##################### Example UI Modal #####################
        Story(
          name: 'UiHeader',
          builder: (context) => Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Add your back icon functionality here
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                        const Text(
                          "title",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                // Add your add icon functionality here
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                            const SizedBox(width: 8),
                            IconButton(
                              onPressed: () {
                                // Add your add icon functionality here
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        /// ##################### Example UI Modal #####################
        Story(
          name: 'ExpansionTile',
          builder: (context) => Scaffold(
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExpansionTile(
                    title: const Text('Groups'),
                    children: <Widget>[
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: groups.length,
                        itemBuilder: (context, groupIndex) {
                          return ExpansionTile(
                            title: Text('Group ${groupIndex + 1}'),
                            children: <Widget>[
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: groups[groupIndex].length,
                                itemBuilder: (context, itemIndex) {
                                  return Card(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 0.0, vertical: 1.0),
                                    color:
                                        Colors.grey[300], // สีพื้นหลังของ Card
                                    child: ListTile(
                                      title: Text(
                                        groups[groupIndex][itemIndex],
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20.0,
                                              vertical: 10.0), // ระยะห่างขอบ
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  )

                  // -----------------------------
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: groups.length,
                  //   itemBuilder: (context, groupIndex) {
                  //     return ExpansionTile(
                  //       title: Text('Group ${groupIndex + 1}'),
                  //       children: <Widget>[
                  //         ListView.builder(
                  //           shrinkWrap: true,
                  //           itemCount: groups[groupIndex].length,
                  //           itemBuilder: (context, itemIndex) {
                  //             return ListTile(
                  //               title: Text(groups[groupIndex][itemIndex]),
                  //             );
                  //           },
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
