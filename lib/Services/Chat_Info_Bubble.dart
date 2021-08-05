import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Profile_Pictures.dart';

Widget ChatContactTemplate(
    BuildContext context, String name, String text, String time) {
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            OnlineProfile(0),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        width: 150,
                        child: Text(
                          text,
                          style: TextStyle(fontSize: 18),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  time,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xFFF6BEAD),
                  radius: 12,
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
