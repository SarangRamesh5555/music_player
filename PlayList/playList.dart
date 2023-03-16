import 'package:flutter/material.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/PlayList/playListRea_icons.dart';
import 'package:music_player/Settings/settings.dart';

class play_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: const Color.fromARGB(255, 255, 0, 85),
        title: const Text(
          "PlayList",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: all_colors,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.white)),
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
        color: all_colors,
        child: ListView(
          children: [
            platList_Rea(),
            const SizedBox(
              height: 10,
            ),

            playList_rea2(
                Pheight3: _mediaquery.height * 0.9,
                Pheight45: _mediaquery.height * 0.11,
                Pwidth45: _mediaquery.width * 0.11,
                Pcolor3: all_colors,
                Pwidth4: _mediaquery.width)
            // playList_rea2(),
            // playList_Rea3()
          ],
        ),
      ),
    );
  }
}
