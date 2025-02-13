import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widget/chat/her_message_buble.dart';
import 'package:yes_no_app/presentation/widget/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widget/shared/message_filed_box.dart ';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://pm1.aminoapps.com/6921/ea94e2249ac6586dfa270d6ff0427fee97d99056r1-750-726v2_uhq.jpg'),
          ),
        ),
        title: Text('Jean Doe'),
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
        padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 51,
              itemBuilder: (context, index) {
              return ( index % 2 == 0 ) ? const HerMessageBuble() : const MyMessageBubble();
            }
            )),          
          const MessageFiledBox(),
          ],
        ),
      ),
    );
  }
}

