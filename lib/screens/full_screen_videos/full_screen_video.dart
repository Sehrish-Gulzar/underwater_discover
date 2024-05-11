import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'components/bg_black_shade.dart';
import 'components/detail_text.dart';
import 'components/full_screen_video_player.dart';

class FullScreenVideo extends StatelessWidget {
  final VideoPlayerController videoController;
  final String title;
  final String subtitle;
  final String details;
  final String tag;

  const FullScreenVideo(
      {Key? key,
      required this.videoController,
      required this.title,
      required this.subtitle,
      required this.tag,
      required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FullScreenVideoPlayer(tag: tag, videoController: videoController),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5), // Adjust opacity here
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const BGBlackShade(),
          DetailText(
            details: details,
            subtitle: subtitle,
            title: title,
          ),
        ],
      ),
    );
  }
}
