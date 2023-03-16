import 'package:flutter/material.dart';
import 'package:music_player/recentlyPlayed/recenly_PlayedRea.dart';

class recently_Played extends StatelessWidget {
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
            "Recently  Played",
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          toolbarHeight: 100,
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: _mediaquery.height,
          color:const  Color.fromARGB(255, 0, 0, 0),
          width: _mediaquery.width,
          child: ListView(
            children: [recently_PlayedRea()],
          ),
        ),
      ),
    );
  }
}
