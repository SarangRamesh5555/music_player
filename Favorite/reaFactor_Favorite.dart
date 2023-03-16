import 'package:flutter/material.dart';
import 'package:music_player/HomePage/homePage1.dart';
import 'package:music_player/music/music_Interface.dart';



////////listview builder/////////////////////

Flist(double Fheight, double fwidth2) {
  return Container(
    
    margin: const  EdgeInsets.only(left: 15, right: 15),
    height: Fheight,
    width: fwidth2,
    child: ListView.separated(
        itemBuilder: (context, index) => Card(
              color: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("images/blur2.jpg"),
                        fit: BoxFit.cover)),
                child: ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => home_page1())),
                  title: const Text("listern me nothing "),
                  subtitle: const Text("proud you think about that all "),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/dare.jpg"),
                  ),
                  trailing: IconButton(
                      onPressed: () => print("name"),
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )),
                ),
              ),
            ),
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: 3),
  );
}
