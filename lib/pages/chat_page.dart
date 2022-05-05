import 'package:chat/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Chat page'),
            TextButton(
              onPressed: () {
                AuthService().logout();
              },
              child: const Text('logout'),
            )
          ],
        ),
      ),
    );
  }
}
