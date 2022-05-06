import 'package:flutter/material.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'Enviar mensagem'),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.send,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
