// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_ui_library/flutter_ui_library.dart';

class DraggableCard extends StatefulWidget {
  final List<Widget> children;

  const DraggableCard({super.key, required this.children});

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard> {
  Offset _position = Offset.zero;
  bool _close = false;

  @override
  Widget build(BuildContext context) {
    return _close
        ? Container()
        : GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                _position += details.delta;
                // อัปเดตตำแหน่งของ Card ตามการลาก
              });
            },
            child: Transform.translate(
              offset: _position,
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.15,
                  child: Card(
                    shadowColor: UiColors.greyColor,
                    surfaceTintColor: UiColors.bitterLime800,
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 20, bottom: 20),
                    child: Stack(
                      children: <Widget>[
                        const Column(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: [],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            iconSize: 16.0,
                            color: Colors.black,
                            hoverColor: UiColors.transparent,
                            icon: const Icon(
                              Icons.close,
                            ),
                            onPressed: () {
                              setState(() => _close = true);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
