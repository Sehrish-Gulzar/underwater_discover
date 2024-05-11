import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideoPlayer extends StatelessWidget {
  const FullScreenVideoPlayer({
    super.key,
    required this.tag,
    required this.videoController,
  });

  final String tag;
  final VideoPlayerController videoController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: tag,
        child: AspectRatio(
          aspectRatio: videoController.value.aspectRatio,
          child: VideoPlayer(videoController),
        ),
      ),
    );
  }
}
