import 'package:flutter/material.dart';

class HadithDetailsScreen extends StatelessWidget {
  HadithDetailsScreen({super.key, required this.contentHades});
  List<String> contentHades;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Text(
          "Hadith 1",
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
                        contentHades[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: contentHades.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
