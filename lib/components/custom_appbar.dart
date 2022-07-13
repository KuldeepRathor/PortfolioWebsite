// import 'package:flutter/material.dart';
//
// class CustomAppBar extends StatefulWidget {
//   const CustomAppBar({Key? key}) : super(key: key);
//
//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();
// }
//
// class _CustomAppBarState extends State<CustomAppBar>
//     with TickerProviderStateMixin {
//   late AnimationController _animationController;
//
//   bool isClicked = false;
//
//   void _handleOnPressed() {
//     setState(() {
//       isClicked
//           ? _animationController.forward()
//           : _animationController.reverse();
//     });
//   }
//
//   @override
//   void initState() {
//     initState();
//
//     _animationController = AnimationController(
//         duration: const Duration(milliseconds: 450), vsync: this);
//   }
//
//   @override
//   void dispose() {
//     dispose();
//     _animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 70,
//         width: size.width,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(35),
//           color: Colors.white38.withOpacity(0.2),
//         ),
//         child: IconButton(
//           iconSize: 50,
//           splashColor: Colors.greenAccent,
//           icon: AnimatedIcon(
//             icon: AnimatedIcons.menu_arrow,
//             progress: _animationController,
//             // semanticLabel: 'Show menu',
//           ),
//           onPressed: () => _handleOnPressed(),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
import 'package:flutter/material.dart';

import 'constants.dart';
import 'dart:html' as html;

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 70,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white38.withOpacity(0.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'KR',
            style: TextStyle(
              color: Colors.cyanAccent,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  html.window.open(
                      "https://drive.google.com/file/d/1LBIAk51zlgW7f4Aq5zx7WekhLxSFqFf_/view?usp=sharing",
                      "_blanck");
                },
                child: const Text(
                  "Resume",
                  style: TextStyle(
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  html.window
                      .open("https://www.krrathor226@gmail.com", "_blanck");
                },
                child: const Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
