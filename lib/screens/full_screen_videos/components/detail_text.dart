import 'package:flutter/material.dart';

import '../../../utils/size.dart';
import 'discover_more_button.dart';

class DetailText extends StatelessWidget {
  const DetailText({
    super.key,
    required this.title,
    required this.subtitle,
    required this.details,
  });

  final String title;
  final String subtitle;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: SizeHeight.height(context, 0.05),
      left: SizeWidth.width(context, 0.04),
      child: SizedBox(
        width: SizeWidth.width(context, 0.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              details,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            DiscoverMoreButton()
          ],
        ),
      ),
    );
  }
}
