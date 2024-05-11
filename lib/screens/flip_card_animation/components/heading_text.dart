import 'package:flutter/material.dart';

class HeadindText extends StatelessWidget {
  const HeadindText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: const Text(
              "DISCOVER",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: Text(
              "Explore the natural wonders of the world",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
