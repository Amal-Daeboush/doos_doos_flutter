import 'package:doss_doss/view/chat/widgets/chat_input.dart';
import 'package:doss_doss/view/chat/widgets/message_bubble.dart';
import 'package:doss_doss/view/widgets/app%20bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ChatSupportScreen extends StatelessWidget {
  const ChatSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Chat support', isBack: true),
      body: Column(
          children: [
           
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  MessageBubble(
                    message: 'Hello, how can I help you?',
                    isMe: false,
                    time: '09:32 AM',
                  ),
                  MessageBubble(
                    message: 'I want to book a ride',
                    isMe: true,
                    time: '09:32 AM',
                  ),
                  MessageBubble(
                    message: 'Sure! Let\'s get started.',
                    isMe: false,
                    time: '09:32 AM',
                  ),
                ],
              ),
            ),

            ChatInputSection(
              isChatSupport: true,
           
            ),
          ],
        ),
    );
  }
}
