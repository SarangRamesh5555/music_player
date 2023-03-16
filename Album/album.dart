import 'package:flutter/material.dart';
import 'package:music_player/Album/album_Gridview.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Settings/settings.dart';
import 'package:music_player/music/music_Interface.dart';

class alBum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.pink,
          title: const Text(
            "Album",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: all_colors,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => settings())),
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          height: _mediaquery.height,
          width: _mediaquery.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/blur3.jpg"), fit: BoxFit.cover)),
          child: ListView(
            children: [
              Stack(
                children: [
                  album_Gridview(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
