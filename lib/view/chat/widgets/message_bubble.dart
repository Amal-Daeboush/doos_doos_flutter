import 'package:doss_doss/core/constant/app_colors.dart';
import 'package:doss_doss/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe; // يحدد إذا كانت الرسالة مرسلة أم مستقبلة
  final String time; // وقت الرسالة

  const MessageBubble({
    Key? key,
    required this.message,
    required this.isMe,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      padding: EdgeInsets.only(
        right: isMe ? 0 : 16, // لو مرسل يمين بدون مسافة، لو مستقبل فيه مسافة
        left: isMe ? 16 : 0,   // لو مرسل فيه مسافة من اليسار، لو مستقبل بدون مسافة
      ),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
        
          Bubble(
            margin: const BubbleEdges.only(top: 6,bottom: 5),
            alignment: isMe ? Alignment.topRight : Alignment.topLeft,
            nip: isMe ? BubbleNip.rightTop : BubbleNip.leftTop,
            color: isMe ? AppColors.primary : AppColors.greyColor2,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                message,
                style: Styles.style12.copyWith(
                  fontWeight: FontWeight.w400,
                  color: isMe ? AppColors.white : AppColors.primary,
                ),
              ),
            ),
          ),
          
            Text(
            time,
            style: Styles.style12.copyWith(
              color: AppColors.greyColor12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
