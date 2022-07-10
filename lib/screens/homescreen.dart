import 'package:flutter/material.dart';
import 'package:portfoliowebsite2/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,

        // decoration: const BoxDecoration(
        //   color: Colors.black,
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/blurry-gradient-haikei.png'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Body(
              //   image: 'assets/images/low-poly-grid-haikei.png',
              // ),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
