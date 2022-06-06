import 'package:flutter/material.dart';

AppBar appbar(context) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black,
    title: const CircleAvatar(
      backgroundColor: Colors.black,
      backgroundImage: AssetImage("logo.png"),
      radius: 35,
    ),
  );
}
