import 'package:flutter/material.dart';

Widget text_privacy_policy(String _text) {
  return Text(
    _text,
    style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.white,
        fontSize: 12),
  );
}

Widget text_privacy_policy2(String _text2, double _textsize) {
  return Text(
    _text2,
    style: TextStyle(
        color: Colors.white,
        fontSize: _textsize,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold),
  );
}

var s_box = SizedBox(
  height: 20,
);
