import 'package:flutter/material.dart';
import 'Chat_Contact_Template.dart';
import 'Profile_Pictures.dart';
import 'dart:math';

class OnlineStatusProfile {
  List<Widget> onlineProfileList = [];

  List<Widget> LoopingToAdd(int iterations) {
    onlineProfileList = [];
    for (int i = 0; i < iterations; i++) {
      var rng = Random();
      onlineProfileList.add(
        onlineProfile(picURL: rng.nextInt(5) + 1),
      );
    }
    return onlineProfileList;
  }
}

void _addOnlineContacts() {
  // Backend
  // Append the new contacts to OnlineProfileList.
}

ChatContact page = ChatContact();

class ChatContactPage {
  List<Widget> contactsList = [
    page.chatContactTemplate(
      'Khristina Shtromberger',
      'Hey, Hi How are you doing',
      '19:30',
      numberOfMsgs: 3,
      typing: true,
      read: false,
    ),
    page.chatContactTemplate('Marta Niko', 'What to do?', '12:07',
        numberOfMsgs: 1, read: false),
    page.chatContactTemplate(
        'Julia Schetko', "What's New? How are you", '00:16',
        online: false),
    page.chatContactTemplate(
        'Sandra Sokolovshaya', 'See you tomorrow', '1 day ago',
        online: false),
    page.chatContactTemplate('Alex Neta', 'Karma has no menu', '1 day ago',
        numberOfMsgs: 1, read: false, online: false),
    page.chatContactTemplate(
        'Niza Emirshah', 'Hey! When we go to', '2 day ago'),
    page.chatContactTemplate(
        'Sandra Sokolovshaya', 'See you tomorrow', '1 day ago',
        online: false),
    page.chatContactTemplate('Alex Neta', 'Karma has no menu', '1 day ago',
        numberOfMsgs: 1, read: false, online: false),
    page.chatContactTemplate(
      'Marta Niko',
      'What to do?',
      '12:07',
      read: false,
      numberOfMsgs: 1,
    ),
    page.chatContactTemplate(
        'Niza Emirshah', 'Hey! When we go to', '2 day ago'),
    page.chatContactTemplate(
        'Sandra Sokolovshaya', 'See you tomorrow', '1 day ago',
        online: false),
  ];
}
