import 'package:flutter/material.dart';
import 'package:maybe_app/domain/entities/message.dart';
import 'package:provider/provider.dart';
import 'package:maybe_app/presentation/providers/chat_provider.dart';
import 'package:maybe_app/presentation/widget/chat/her_message_bubble.dart';
import 'package:maybe_app/presentation/widget/chat/my_message_bubble.dart';
import 'package:maybe_app/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4GBB3NkoIYTfz26jt3WIu48kZDgkD_fcZJYJJ5irf8A&s')),
        ),
        title: const Text('Lionel Messi'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {
                      final message = chatProvider.messageList[index];
                      return (message.fromWho == FromWho.she)
                          ? HerMessageBubble(message: message,)
                          : MyMessageBubble(message: message,);
                    })),

            const SizedBox(
              height: 10,
            ),
            ////CAJA DE TEXTO
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
