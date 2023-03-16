import 'package:flutter/material.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/Settings/settings.dart';
import 'package:music_player/bottomsheet/bottom_Sheet.dart';
import 'package:music_player/music/music_Interface.dart';

////////////////////////////////////////////navbar ////////////////////
class SreaFactor1 extends StatelessWidget {
  double sheight1;
  double swidth1;
  dynamic scolor1;
  var nav_factor1;
  SreaFactor1(
      {super.key,
      required this.sheight1,
      // required this.nav_factor1,
      required this.scolor1,
      required this.swidth1}) {}
  // required double sheight,
  // required double swidht}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sheight1,
      width: swidth1,
      color: scolor1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ),
          const Text(
            "Search",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          sicon_Button1(Icons.settings, context),
        ],
      ),
    );
  }

  Widget sicon_Button1(var sreaIocon, BuildContext context) {
    // ignore: avoid_print
    return IconButton(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => settings())),
      icon: Icon(sreaIocon),
      color: Colors.white,
      iconSize: 40,
    );
  }
}
//////////////////////////listserch music/////////////////////////////////////////////////

srefactor3(double sheight3, double swidth4, Color scolor3, double swidth45,
    double height45) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10),
    height: sheight3,
    width: swidth4,
    decoration: BoxDecoration(
        /*  boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 255, 255, 255),
              offset: Offset(1.0, 3.0),
              blurRadius: 5,
              spreadRadius: 0.3)
        ],*/
        borderRadius: BorderRadius.circular(5),
        color: scolor3,
        image: const DecorationImage(
            image: AssetImage("images/blur3.jpg"), fit: BoxFit.cover)),
    child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => home_page1())),
              title: const Text(
                "musci name ",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                "sing some sonns ............",
                style: TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                  onPressed: () {
                    show_modelsheet(
                        contetx: context,
                        sheet_Height: 300,
                        sheet_Width: double.infinity,
                        sheet_color: Colors.blue);
                  },
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )),
              ///////////////////////////////////////////////////////////lead////////////////
              leading: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                width: swidth45,
                height: height45,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                      image: AssetImage("images/mus2.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container();
        },
        itemCount: 5),
  );
}
