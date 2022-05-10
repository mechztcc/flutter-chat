import 'dart:math';

import 'package:chat/components/messages.dart';
import 'package:chat/components/new_message.dart';
import 'package:chat/models/chat_notification.dart';
import 'package:chat/pages/notification_page.dart';
import 'package:chat/services/auth/auth_service.dart';
import 'package:chat/services/notification/push_notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cod3r Chat'),
        actions: [
          DropdownButtonHideUnderline(
            child: DropdownButton(
              iconEnabledColor: Colors.white,
              items: [
                DropdownMenuItem(
                  value: 'logout',
                  child: Container(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.transit_enterexit_sharp,
                        ),
                        Text('Sair')
                      ],
                    ),
                  ),
                )
              ],
              icon: const Icon(
                Icons.more,
              ),
              onChanged: (value) {
                if (value == 'logout') {
                  AuthService().logout();
                }
              },
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const NotificationPage()));
                },
                icon: const Icon(
                  Icons.notifications,
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  maxRadius: 10,
                  backgroundColor: Colors.red.shade800,
                  child: Text(
                    '${Provider.of<PushNotificationService>(context).itemsCount}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(
              child: Messages(),
            ),
            NewMessage(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     Provider.of<PushNotificationService>(context, listen: false).add(
      //       ChatNotification(
      //           title: 'Notication test',
      //           body: Random().nextDouble().toString()),
      //     );
      //   },
      // ),
    );
  }
}
