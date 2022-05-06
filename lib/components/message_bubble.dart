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
    return Text(message.text);
  }
}
