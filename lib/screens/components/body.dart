import 'package:flutter/material.dart';
import 'package:simple_chatting_app/components/filled_outline_button.dart';
import 'package:simple_chatting_app/constants.dart';
import 'package:simple_chatting_app/screens/components/chat_card.dart';
import 'package:simple_chatting_app/screens/components/messages_screen.dart';

import '../../models/Chat.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              const SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
