import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key, required this.index, required this.title});
  int index;
  String title;
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  void initState() {
    super.initState();
    loadFile();
  }

  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xffE2BE7F),
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xffE2BE7F),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            "assets/images/bg_quran_details_screen.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 110),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xffE2BE7F)),
                      ),
                      child: Text(
                        "${verses[index]} (${index + 1})",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: verses.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void loadFile() async {
    String content =
        await rootBundle.loadString('assets/files/${widget.index}.txt');
    List<String> data = content.split('\n');
    verses = data;
    setState(() {});
  }
}
