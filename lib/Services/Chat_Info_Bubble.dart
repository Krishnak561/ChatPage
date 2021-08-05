import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Profile_Pictures.dart';

class ChatInfo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            OnlineProfile(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Khristina Shtromberger"),
                Container(
                  child: Flexible(
                    child: Container(
                      width: 150,
                      child: Text(
                        "See you tomorrow I wanna talk to you",
                        style: TextStyle(fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
