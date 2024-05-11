import 'package:flutter/material.dart';

class DiscoverMoreButton extends StatelessWidget {
  const DiscoverMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            animationDuration: Duration(milliseconds: 500),
            elevation: 10,
            backgroundColor: Colors.transparent),
        onPressed: () {},
        child: Text(
          "Discover More",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
