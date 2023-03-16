import 'package:flutter/material.dart';
import 'package:music_player/Album/albumReafactor.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Favorite/favorate.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/music/music_Interface.dart';

class album_Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return Container(

        /// margin: const EdgeInsets.all(7),
        height: _mediaquery.height,
        width: _mediaquery.width,
        decoration: BoxDecoration(
          color: all_colors,
          /*image: DecorationImage(
                image: AssetImage("images/blur5.jpg",), fit: BoxFit.cover)*/
        ),
        child: GridView.builder(
            physics: ScrollPhysics(),
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
            itemBuilder: ((context, index) {
              return Container(
                color: all_colors,
                height: _mediaquery.height * 0.1,
                width: _mediaquery.width * 0.5,
                margin: const EdgeInsets.only(left: 5, right: 5, top: 3),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: (() => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => home_page1()))),
                        child: albumRefactor1(
                            Aheight1: _mediaquery.height * 0.18,
                            Awidth1: _mediaquery.width),
                      ),
                      const Positioned(
                        top: 148,
                        child: Text(
                          "allwasy i think this is song but no\n more just music ",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              );
            })));
  }
}
