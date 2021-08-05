import 'package:flutter/material.dart';

Widget OnlineProfile(double set) {
  return Padding(
    padding: EdgeInsets.only(right: set, left: 0, top: set, bottom: set),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 8.0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFF6BEAD),
                    radius: 4.0,
                  )),
            ),
            radius: 30.0,
            // backgroundImage:
            //     AssetImage('assets/images/user-image-default.png'),
          ),
        ),
      ],
    ),
  );
}
