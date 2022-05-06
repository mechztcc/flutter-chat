import 'dart:math';

import 'package:chat/models/user_model.dart';
import 'package:chat/models/chat_message.dart';
import 'package:chat/services/chat/chat_service.dart';
import 'dart:async';

class ChatMockService implements ChatService {
  static final List<ChatMessage> _msgs = [];

  static MultiStreamController<List<ChatMessage>>? _controller;

  static final _msgsStream = Stream<List<ChatMessage>>.multi((controller) {
    _controller = controller;
  });

  @override
  Stream<List<ChatMessage>> messagesStream() {
    return _msgsStream;
  }

  @override
  Future<ChatMessage> save(String text, UserModel user) async {
    final newMessage = ChatMessage(
      id: Random().nextDouble().toString(),
      text: text,
      createdAt: DateTime.now(),
      userId: user.id,
      userName: user.name,
      userImageURL: user.imageUrl,
    );

    _msgs.add(newMessage);
    _controller?.add(_msgs);
    return newMessage;
  }
}
