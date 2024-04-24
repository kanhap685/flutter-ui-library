import 'package:flutter/material.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';
class UiDashboard extends StatefulWidget {
  final String images;

  const UiDashboard({
    super.key, 
    required this.images,
  });

  @override
  State<UiDashboard> createState() => _UiDashboardState();
}

class _UiDashboardState extends State<UiDashboard> {
  var height, width;
  
  
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      color: UiColors.allFbbFbb70,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(),
            height: height * 0.25,
            width: width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Icon(Icons.sort,
                        color: Colors.white,
                        size: 40,
                        ),
                      ),
                      ClipRRect(
                        child: Image.asset(widget.images,
                        height: 50,
                        ),
                      )
                    ],
                  ),
                )
                ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: UiColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                    )),
            height: height * 0.75,
            width: width,
          )
        ],
      ),
    );
  }
}
