import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:portfoliowebsite2/components/redirectbuttons.dart';

import 'custom_appbar.dart';

class Body extends StatelessWidget {
  // final String image;

  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(
      //       image,
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 200.0,
          right: 200,
        ),
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 150,
            ),
            Row(
              children: const [
                Text(
                  'Hey I\'m,',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: const [
                Text(
                  'KULDEEP RATHOR',
                  style: TextStyle(fontSize: 60, color: Colors.cyanAccent),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'I am a Flutter Developer based in Mumbai, India student. I enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. I have been working on personal projects for a year now while studying at the university and I\'ve manage to gain a decent amount of experience and valuable knowledge from all different kinds of fields throughout my projects/work. I have also participated in various hackathons that boosted my experience. ',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RedirectButtons(
                    kicon: 'assets/images/Vector.png',
                    portfolio: 'Send an email',
                    press: () {
                      html.window.open(
                        "https://www.krrathor226@gmail.com",
                        "_blanck",
                      );
                    },
                  ),
                  RedirectButtons(
                    kicon: 'assets/images/Vector (1).png',
                    portfolio: 'LinkedIn',
                    press: () {
                      html.window.open(
                          "https://www.linkedin.com/in/kuldeep-rathor/",
                          "_blanck");
                    },
                  ),
                  RedirectButtons(
                    kicon: 'assets/images/Vector (2).png',
                    portfolio: 'GitHub',
                    press: () {
                      html.window
                          .open("https://github.com/KuldeepRathor", "_blanck");
                    },
                  ),
                  RedirectButtons(
                    kicon: 'assets/images/bb1vetfygfwstghs4hjp.png',
                    portfolio: 'Devfolio',
                    press: () {
                      html.window
                          .open("https://devfolio.co/@Kuldeep226/", "_blanck");
                    },
                  ),
                  RedirectButtons(
                    kicon: 'assets/images/icons8-discord-48.png',
                    portfolio: 'Discord',
                    press: () {
                      html.window.open(
                          "https://discordapp.com/users/6005/",
                          "_blanck");
                    },
                  ),
                  RedirectButtons(
                    kicon: 'assets/images/icons8-twitter-48.png',
                    portfolio: 'Twitter',
                    press: () {
                      html.window.open(
                        "https://twitter.com/KuldeepRR",
                        "_blanck",
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
