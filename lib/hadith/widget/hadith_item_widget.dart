import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadith/hadith_details_screen.dart';

class HadithItemWidget extends StatelessWidget {
  const HadithItemWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
