import 'package:flutter/material.dart';

Widget onlineProfile(
    {double padding = 10.0, bool online = true, int picURL = 1}) {
  String URL = picURL.toString();
  return Padding(
    padding:
        EdgeInsets.only(right: padding, left: 0, top: padding, bottom: padding),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: online ? onlineIndicator() : null,
            ),
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/$URL.jpg'),
          ),
        ),
      ],
    ),
  );
}

CircleAvatar onlineIndicator() {
  return CircleAvatar(
    backgroundColor: Colors.white,
    radius: 8.0,
    child: CircleAvatar(
      backgroundColor: Color(0xFFF6BEAD),
      radius: 4.0,
    ),
  );
}
