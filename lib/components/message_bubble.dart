import 'dart:io';

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

  Widget _showAvatar(String imageUrl) {
    ImageProvider? provider;
    final uri = Uri.parse(imageUrl);

    if (uri.scheme.contains('http')) {
      provider = NetworkImage(uri.toString());
    } else {
      provider = FileImage(File(uri.toString()));
    }

    return CircleAvatar(
      backgroundImage: provider,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: belogsToCurrentUser
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Container(
              width: 210,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              decoration: BoxDecoration(
                color: belogsToCurrentUser
                    ? Colors.grey.shade300
                    : Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(12),
                  topRight: const Radius.circular(12),
                  bottomRight: belogsToCurrentUser
                      ? const Radius.circular(12)
                      : const Radius.circular(0),
                  bottomLeft: belogsToCurrentUser
                      ? const Radius.circular(0)
                      : const Radius.circular(12),
                ),
              ),
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
        ),
        Positioned(
          top: 0,
          left: belogsToCurrentUser ? null : 165,
          right: belogsToCurrentUser ? 165 : null,
          child: _showAvatar(message.userImageURL),
        )
      ],
    );
  }
}
