import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return (index % 2 == 0) ? const HerMessageBubble() : const MyMessageBubble();
            })),
            
            const SizedBox(height: 10,),
            ////CAJA DE TEXTO
            const MessageFieldBox(),

          ],
        ),
      ),
    );
  }
}
