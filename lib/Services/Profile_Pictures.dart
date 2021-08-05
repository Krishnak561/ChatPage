import 'package:flutter/material.dart';

class OnlineProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
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
}
