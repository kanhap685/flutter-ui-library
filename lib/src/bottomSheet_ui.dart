// import 'package:flutter/material.dart';

// enum BottomSheetContent { radio, checkbox, list, empty }

// class UiBottomSheet extends StatefulWidget {
//   final bool? isFullPage;
//   final String title;
//   final BottomSheetContent bottomSheetContent;
//   // final List<ChmBottomSheetModel> data;
//   final VoidCallback dissmiss;
//   final Color? iconColor;
//   final bool? showButtonClose;
//   final ScrollController? scrollController;

//   const UiBottomSheet({
//     super.key,
//     this.isFullPage,
//     required this.title,
//     required this.bottomSheetContent,
//     required this.dissmiss,
//     this.iconColor,
//     this.showButtonClose = true,
//     this.scrollController,
//   });

//   @override
//   State<UiBottomSheet> createState() => _UiBottomSheetState();
// }

// class _UiBottomSheetState extends State<UiBottomSheet> {
//   bool isDisable = true;
//   bool isReset = false;
//   bool isHasData = false;
//   List<String> listOfIdReturn = [];

//   @override
//   void initState() {
//     super.initState();

//     // for (var element in widget.data) {
//     //   if (element.isChecked) {
//     //     listOfIdReturn.add(element.id);
//     //     isHasData = true;
//     //     isDisable = false;
//     //   }
//     // }
//   }

//   static const textStyle = TextStyle(
//     color: Color.fromARGB(255, 226, 226, 226),
//     fontSize: 14,
//     fontWeight: FontWeight.normal,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       controller: widget.scrollController,
//       itemCount: 1,
//       itemBuilder: (context, index) => Column(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(top: 24, bottom: 0),
//             child: const Padding(
//               padding: EdgeInsets.only(left: 24.0, right: 12.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [Text('data')],
//               ),
//             ),
//           ),
//           widget.bottomSheetContent == BottomSheetContent.empty
//               ? Container(
//                   margin: const EdgeInsets.only(top: 16),
//                   child: const Text(
//                     'empty',
//                     style: textStyle,
//                   ),
//                 )
//               : widget.bottomSheetContent == BottomSheetContent.radio ? ChmRadioButton(
//                       isForceReset: listOfIdReturn.isEmpty ? true : false,
//                       onSelected: (data) {
//                         setState(() {
//                           isDisable = false;
//                           listOfIdReturn.clear();
//                           listOfIdReturn.add(data);
//                         });
//                       },
//                       radioListModel: widget.data
//                           .map((e) => ChmRadioButtonModel(
//                                 value: e.id,
//                                 subtitle: e.subtitle,
//                                 image: e.image,
//                                 title: e.title,
//                                 isDisable: e.isDisable,
//                                 isChecked: e.isChecked,
//                                 customText: e.customText,
//                                 imageWidget: e.imageWidget,
//                                 trackFunction: e.trackFunction,
//                               ))
//                           .toList(),
//                       isDivider: widget.isDivider,
//                       radioButtonType: widget.radioButtonType ??
//                           ChmRadioButtonType.secondary,
//                       paddingIcon: widget.paddingIcon,
//                     ) :
              
              
//               Container(
//                   margin: const EdgeInsets.only(top: 16),
//                   child: Text(
//                     '${widget.bottomSheetContent}',
//                     style: textStyle,
//                   ),
//                 )
//         ],
//       ),
//     );

//     // const Text('data',
//     //     style: TextStyle(
//     //       color: Color.fromARGB(255, 226, 226, 226),
//     //       fontSize: 14,
//     //       fontWeight: FontWeight.normal,
//     //     ));
//   }
// }

// class ChmRadioButton {
// }


// class ChmRadioButtonModel {
//   String value;
//   String title;
//   String? subtitle;

//   /// for case widget
//   Widget? customText;
//   bool isDisable;
//   String? image;
//   bool isChecked;
//   Widget? imageWidget;
//   TextStyle? titleTextStyle;
//   TextStyle? subTitleTextStyle;
//   Function? trackFunction;
//   bool? isSubTitleMaxLines3;

//   ChmRadioButtonModel({
//     required this.value,
//     required this.title,
//     this.subtitle,
//     this.customText,
//     required this.isDisable,
//     this.image,
//     required this.isChecked,
//     this.imageWidget,
//     this.titleTextStyle,
//     this.subTitleTextStyle,
//     this.trackFunction,
//     this.isSubTitleMaxLines3 = false,
//   });
// }