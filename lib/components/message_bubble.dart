import 'package:chat/models/chat_message.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool belogsToCurrentUser;

  const MessageBubble({
    Key? key,
    required this.message,
    required this.belogsToCurrentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          belogsToCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          width: 210,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
              color: belogsToCurrentUser
                  ? Colors.grey.shade300
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text(
                message.userName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(message.text),
            ],
          ),
        ),
      ],
    );
  }
}
