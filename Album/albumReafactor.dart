import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/////////////////////gridview album//////////////////////////////////

Widget albumRefactor1({required double Aheight1, required double Awidth1}) {
  return Container(
    height: Aheight1,
    width: Awidth1,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
            image: AssetImage("images/mus.jpg"), fit: BoxFit.cover)),
  );
}
