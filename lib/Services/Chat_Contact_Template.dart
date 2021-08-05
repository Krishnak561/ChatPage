import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Profile_Pictures.dart';
import 'dart:math';

class ChatContact {
  bool checkTyping(bool online, bool typing) {
    if (online && typing) {
      typing = true;
    } else {
      typing = false;
    }
    return typing;
  }

  Widget chatContactTemplate(String name, String text, String time,
      {bool read = true,
      bool online = true,
      bool typing = false,
      int numberOfMsgs = 0,
      int picURL = 1}) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 20),
        child: Container(
          height: 60,
          //width: MediaQuery.of(context).size.width,
          child: Row(
            children: <Widget>[
              onlineProfile(
                  online: online, padding: 0, picURL: Random().nextInt(5) + 1),
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
                          width: 200,
                          child: Text(
                            checkTyping(online, typing) ? "Typing..." : text,
                            style: TextStyle(
                                fontSize: 17,
                                color: read
                                    ? Colors.black38
                                    : checkTyping(online, typing)
                                        ? Colors.blue
                                        : Colors.black),
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
                    style: TextStyle(color: Colors.black26, fontSize: 17),
                  ),
                  read ? doubleTick() : circleAvatar(numberOfMsgs),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  CircleAvatar circleAvatar(int num) {
    return CircleAvatar(
      backgroundColor: Color(0xFFF6BEAD),
      radius: 15,
      child: Text(
        "$num",
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }

  Icon doubleTick() {
    return Icon(
      Icons.done_all_outlined,
      color: Colors.black26,
      size: 25,
    );
  }
}
