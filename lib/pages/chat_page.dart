import 'package:chat/services/auth/auth_service_mock.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text('Chat page'),
          TextButton(
            onPressed: () {
              AuthServiceMock().logout();
            },
            child: const Text('logout'),
          )
        ],
      ),
    ));
  }
}
