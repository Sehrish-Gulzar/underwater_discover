import 'package:flutter/material.dart';

import '../../../utils/size.dart';
import '../flip_card.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.widget,
  });

  final FlipCard widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: SizeHeight.height(context, 0.1),
      left: SizeWidth.width(context, 0.1),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                widget.candidate.title,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              child: Text(
                widget.candidate.subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
