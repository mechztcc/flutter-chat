import 'package:chat/services/auth/auth_service.dart';
import 'package:chat/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {

  final TextEditingController _controller = TextEditingController();

  Future<void> _sendMessage() async {
    final user = AuthService().currentUser;

    if(user != null) {
      await ChatService().save(_controller.text, user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(labelText: 'Enviar mensagem'),
          ),
        ),
        IconButton(
          onPressed: _sendMessage,
          icon: Icon(
            Icons.send,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
