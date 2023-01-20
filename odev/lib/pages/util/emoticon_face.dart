import  'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String emoticonFace;
  const EmotionFace({super.key, required this.emoticonFace,});

  @override
  Widget build(BuildContext context) {
    return  Container(
            decoration: BoxDecoration(color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
            ),
          padding: EdgeInsets.all(12),
            child: Center(child: Text(emoticonFace,
            style:TextStyle(fontSize: 28, )
            ),),
          );
  }
}