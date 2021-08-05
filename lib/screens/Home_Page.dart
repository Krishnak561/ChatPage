import 'package:flutter/material.dart';
import 'package:internship/Services/AddingContacts.dart';
import 'package:internship/Services/Constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();
  OnlineStatusProfile profile = OnlineStatusProfile();
  ChatContactPage chat = ChatContactPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.search_rounded,
          color: kSilentFeatures,
          size: 30,
        ),
        title: Text(
          "Contacts",
          style: TextStyle(color: kBlack, fontSize: 25),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.more_horiz,
              color: kSilentFeatures,
              size: 30,
            ),
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ONLINE",
                  style: TextStyle(
                      color: kSilentFeatures,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  "+ADD FRIENDS",
                  style: TextStyle(
                      color: kChiefFeatures,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 7),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: profile.LoopingToAdd(10),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  controller: _controller,
                  shrinkWrap: true,
                  children: chat.contactsList,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
