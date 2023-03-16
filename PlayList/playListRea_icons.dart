import 'package:flutter/material.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:music_player/AllColors/allColors.dart';
import 'package:music_player/Favorite/favorate.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/bottomsheet/bottom_Sheet.dart';
import 'package:music_player/music/music_Interface.dart';

//////////////////////////////add option //////////////////////////////////////
class platList_Rea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: OutlinedButton.icon(
            onPressed: () {
              print("name");
            },
            style:
                OutlinedButton.styleFrom(disabledBackgroundColor: Colors.white),
            icon: const Icon(Icons.add),
            label: const Text("Add Musics TO the playlist"),
          )),
    );
  }
}

////////////////////////////////////lsit of music ////////////////////////////
class playList_rea2 extends StatelessWidget {
  var _controller = ScrollController();
  double? Pheight3;
  double? Pwidth4;
  Color? Pcolor3;
  double? Pwidth45;

  double? Pheight45;
  playList_rea2(
      {required this.Pheight3,
      required this.Pheight45,
      required this.Pwidth45,
      required this.Pcolor3,
      required this.Pwidth4}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        color: all_colors,
        width: double.infinity,
        child: StickyContainer(
            stickyChildren: [
              StickyWidget(
                initialPosition: StickyPosition(
                  bottom: 20,
                  right: 10,
                ),
                finalPosition: StickyPosition(
                    bottom: MediaQuery.of(context).size.height * 0.1,
                    right: 10),
                controller: _controller,
                child: InkWell(
                  onTap: (() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => home_page1()));
                  }),
                  child: Card(
                    shape: const StadiumBorder(
                        side: BorderSide(
                            width: 1, color: Color.fromARGB(255, 255, 0, 217))),
                    child: Container(
                        width: 365,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 30, 23, 23),
                            borderRadius: BorderRadius.circular(50)),
                        child: ListTile(
                          trailing: FittedBox(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () => show_modelsheet(
                                        contetx: context,
                                        sheet_Height: 300,
                                        sheet_Width: double.infinity,
                                        sheet_color: Colors.blue),
                                    icon: const Icon(
                                      Icons.play_circle_filled_rounded,
                                      color: Color.fromARGB(255, 255, 0, 162),
                                      size: 50,
                                    ))
                              ],
                            ),
                          ),
                          leading: const CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("images/mus7.jpg"),
                          ),
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => home_page1())),
                          title: const Text(
                            "The way Legend",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text(
                            "careless them to together now ",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        )),
                  ),
                ),
              ),
            ],

            //////////////////////////list /////////////////////////////
            child: Container(
              child: Container(
                margin: const EdgeInsets.all(5),
                height: Pheight3,
                width: Pwidth4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pcolor3,
                    image: const DecorationImage(
                        image: AssetImage("images/blur3.jpg"),
                        fit: BoxFit.cover)),
                child: ListView.separated(
                    controller: _controller,
                    itemBuilder: (context, index) {
                      return Container(
                          child: ListTile(
                              title: const Text(
                                "Music billie ellish ",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: const Text(
                                "\t sing th esong together ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
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
                                    Icons.more_vert,
                                    color: Colors.white,
                                  )),
                              ///////////////////////////////////////////////////////////lead////////////////
                              leading:const  CircleAvatar(
                                backgroundImage: AssetImage("images/mus8.jpg"),
                              )));
                    },
                    separatorBuilder: (context, index) {
                      return const  SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: 50),
              ),
            )));
  }
}




// class playList_rea2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var _mediaquery = MediaQuery.of(context).size;
//     return Container(
//       height: _mediaquery.height * 0.6,
//       width: _mediaquery.width,
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("images/blur3.jpg"), fit: BoxFit.cover)),
//       child: ListView.separated(
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: const Text(
//                 "music love to them ",
//                 style: TextStyle(color: Colors.white),
//               ),
//               subtitle: const Text(
//                 "music love togerther tentaction",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w100,
//                     fontSize: 10),
//               ),
//               trailing: IconButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => favorate()));
//                   },
//                   icon: const Icon(
//                     Icons.more_vert_outlined,
//                     color: Colors.white,
//                   )),
//               leading: const CircleAvatar(
//                 radius: 25,
//                 backgroundImage: AssetImage("images/mus4.jpg"),
//               ),
//             );
//           },
//           separatorBuilder: ((context, index) {
//             return const SizedBox(
//               height: 20,
//             );
//           }),
//           itemCount: 6),
//     );
//   }
// }

// ////////////////////////////music play bar /////////////////////////////////

// playList_Rea3() {
//   return Container(
//     height: 80,
//     width: 100,
//     decoration: const BoxDecoration(
//       color: Color.fromARGB(255, 74, 71, 71),
//     ),
//     child: ListTile(
//       trailing: FittedBox(
//         child: Row(
//           children: [
//             IconButton(
//                 onPressed: () => print("name"),
//                 icon: const Icon(
//                   Icons.skip_previous_rounded,
//                   size: 30,
//                   color: Colors.white,
//                 )),
//             IconButton(
//                 onPressed: () => print("name"),
//                 icon: const Icon(
//                   Icons.play_circle,
//                   size: 30,
//                   color: Colors.white,
//                 )),
//             IconButton(
//                 onPressed: () => print("name"),
//                 icon: const Icon(
//                   Icons.skip_next_rounded,
//                   size: 30,
//                   color: Colors.white,
//                 ))
//           ],
//         ),
//       ),
//       title: const Text(
//         "indlina love story ",
//         style: TextStyle(color: Colors.white),
//       ),
//       subtitle: const Text(
//         "love my story song 1955 ",
//         style: TextStyle(color: Colors.white, fontSize: 9),
//       ),
//       leading: const Padding(
//         padding: EdgeInsets.only(
//           bottom: 4,
//         ),
//         child: CircleAvatar(
//           radius: 20,
//           backgroundImage: AssetImage("images/mus4.jpg"),
//         ),
//       ),
//     ),
//   );
// }
