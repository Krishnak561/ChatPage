import 'package:flutter/material.dart';
import 'package:internship/Services/AddingContacts.dart';
import 'package:internship/Services/Profile_Pictures.dart';
import 'package:internship/Services/Chat_Info_Bubble.dart';
import 'package:internship/Services/AddingContacts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.search_rounded,
          color: Colors.black26,
          size: 30,
        ),
        title: Text(
          "Contacts",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.more_horiz,
              color: Colors.black26,
              size: 30,
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
                  style: TextStyle(
                      color: Colors.black26,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  "+ADD FRIENDS",
                  style: TextStyle(
                      color: Color(0xFFF6BEAD),
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: onlineProfileList,
              ),
            ),
            Container(
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                controller: _controller,
                shrinkWrap: true,
                children: <Widget>[
                  //TODO Make a list.

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
