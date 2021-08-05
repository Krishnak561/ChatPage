import 'package:flutter/material.dart';
import 'package:internship/Services/Profile_Pictures.dart';
import 'package:internship/Services/Chat_Info_Bubble.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.search_rounded,
          color: Colors.black38,
        ),
        title: Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black38,
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ONLINE",
                  style: TextStyle(color: Colors.black38),
                ),
                Text(
                  "+ADD FRIENDS",
                  style: TextStyle(color: Color(0xFFF6BEAD)),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 60.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  //TODO Make a list.
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                  OnlineProfile(),
                ],
              ),
            ),
            ChatInfo1(),
          ],
        ),
      ),
    );
  }
}
