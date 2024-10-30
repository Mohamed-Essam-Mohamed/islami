import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/quran/quran_details_screen.dart';

class QuranItemWidget extends StatelessWidget {
  const QuranItemWidget({
    super.key,
    required this.number,
    required this.title,
  });
  final String title;
  final int number;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuranDetailsScreen(
            index: number,
            title: title,
          ),
        ));
      },
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset("assets/icons/number_shap_icon.png"),
              Text(
                "$number",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
