import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/bottomsheet/bottom_Sheet.dart';
import 'package:music_player/music/music_Interface.dart';

////////////////////mostly played REa\\\\\\\\\\\\\\\\\\\\\\\\

class mostly_PlayedRea extends StatelessWidget {
  const mostly_PlayedRea({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return Container(
      height: _mediaquery.height * 0.8,
      width: _mediaquery.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/blur2.jpg"), fit: BoxFit.cover)),
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return Container(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => home_page1()));
                },
                leading: Text(
                  "$index.",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                    onPressed: () => show_modelsheet(
                        contetx: context,
                        sheet_Height: 300,
                        sheet_Width: double.infinity,
                        sheet_color: Colors.blue),
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Colors.white,
                    )),
                title: const Text(
                  "my name his own ",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text("can you challenge me that what shappens ",
                    style: TextStyle(color: Colors.white)),
              ),
            );
          }),
          separatorBuilder: ((context, index) {
            return const Divider(
              thickness: 0,
              color: Colors.white,
            );
          }),
          itemCount: 20),
    );
  }
}
