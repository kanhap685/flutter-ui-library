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
  
    return Container(
      color: UiColors.allFbbFbb70,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: Container(
              decoration: const BoxDecoration(),
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 35, left: 15, right: 15, bottom: 10),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                            child: Image.asset(
                              widget.images,
                              height: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                        Text(
                          "Last Update: 23 April 2024",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 7, 7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))
                    ),
                    // height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
          )
          
        ],
      ),
    );
  }
}
