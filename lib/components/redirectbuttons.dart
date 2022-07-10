import 'package:flutter/material.dart';

class RedirectButtons extends StatelessWidget {
  final String kicon;
  final String portfolio;
  final VoidCallback press;

  const RedirectButtons({
    Key? key,
    required this.kicon,
    required this.portfolio,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => press(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white),
            ),
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        kicon,
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      portfolio,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
