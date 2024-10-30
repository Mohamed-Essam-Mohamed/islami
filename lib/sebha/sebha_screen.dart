import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double counter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          "assets/images/bg_sebha_screen.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    right: 120,
                    bottom: 285,
                    child: Image.asset(
                      "assets/icons/mask_group_icon.png",
                      height: 90,
                      width: 90,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      counter += 26;
                      setState(() {});
                    },
                    child: Transform.rotate(
                      angle: counter,
                      child: Image.asset(
                        "assets/icons/sebha_body_icon.png",
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
