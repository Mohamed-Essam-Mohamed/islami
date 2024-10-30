// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:islami_app/hadith/hadith_details_screen.dart';
import 'package:islami_app/hadith/widget/hadith_item_widget.dart';
import 'package:islami_app/quran/widget/quran_item_widget.dart';

class HadithScreen extends StatefulWidget {
  HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<Hadeth> hadesList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readFileHades();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          "assets/images/bg_quran_and_hadith_screen.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              SizedBox(
                height: 228,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("assets/icons/bg_hadith_icon.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: hadesList.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return HadithDetailsScreen(
                              contentHades: hadesList[index].content,
                            );
                          },
                        ),
                      );
                    },
                    child: HadithItemWidget(
                      title: hadesList[index].title,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void readFileHades() async {
    String content = await rootBundle.loadString('assets/ahadeth.txt');
    List<String> contentHadesList = content.split('#\r\n');
    for (var i = 0; i < contentHadesList.length; i++) {
      List<String> splitHades = contentHadesList[i].split('\n');
      String title = splitHades[0];
      splitHades.removeAt(0);
      var hadesContent = Hadeth(title: title, content: splitHades);
      hadesList.add(hadesContent);
    }
    setState(() {});
  }
}

// data class
class Hadeth {
  String title;
  List<String> content;
  Hadeth({
    required this.title,
    required this.content,
  });
}
