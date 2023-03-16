import 'package:flutter/material.dart';

show_modelsheet(
    {required BuildContext contetx,
    required double sheet_Height,
    required double sheet_Width,
    required Color sheet_color}) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
      context: contetx,
      builder: ((context) {
        return Container(
            height: sheet_Height,
            width: sheet_Width,
            decoration: BoxDecoration(
                color: sheet_color,
                image: const DecorationImage(
                    image: AssetImage("images/blur2.jpg"), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return const  ListTile(
                  title: Text(
                    "name ",
                  ),
                  subtitle: Text("name"),
                );
              }),
            ));
      }));
}
