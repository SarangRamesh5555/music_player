import 'package:flutter/material.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/mostlyPlayed/mostPlayed_Rea.dart';

class mostly_Played extends StatelessWidget {
  const mostly_Played({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        appBar: AppBar(
          elevation: 3,
          shadowColor: Color.fromARGB(255, 255, 0, 85),
          centerTitle: true,
          title: const Text(
            "Mostly Played",
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          toolbarHeight: 100,
          backgroundColor: all_colors,
        ),
        body: Container(
          height: _mediaquery.height,
          color: all_colors,
          width: _mediaquery.width,
          child: ListView(
            children: [mostly_PlayedRea()],
          ),
        ),
      ),
    );
  }
}
