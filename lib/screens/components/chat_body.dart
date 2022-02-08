import 'package:flutter/material.dart';
import 'package:simple_chatting_app/constants.dart';
import 'package:simple_chatting_app/models/ChatMessage.dart';
import 'package:simple_chatting_app/screens/components/chat_input.dart';
import 'package:simple_chatting_app/screens/components/messages.dart';

class chat_Body extends StatelessWidget {
  const chat_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
