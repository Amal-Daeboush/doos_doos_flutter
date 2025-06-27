import 'package:doss_doss/view/chat/widgets/bottom%20sheet/custom_bottom_cheet.dart';
import 'package:doss_doss/view/chat/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import '../widgets/chat_input.dart';
import '../widgets/message_bubble.dart' show MessageBubble;

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
              child: ChatTile(),
            ),
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
              isChatSupport: false,
              onTapAtchefment: () {
                showModalBottomSheet(
                  useSafeArea: true,
                  useRootNavigator: true,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) {
                    return CustomBottomSheet();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
