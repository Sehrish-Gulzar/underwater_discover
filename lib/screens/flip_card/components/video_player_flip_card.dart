import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

import '../flip_card.dart';
import 'hero_video_player.dart';

class VideoPlayerFlipCards extends StatelessWidget {
  const VideoPlayerFlipCards({
    super.key,
    required this.widget,
    required VideoPlayerController controller,
    required Future<void> initializeVideoPlayerFuture,
  })  : _controller = controller,
        _initializeVideoPlayerFuture = initializeVideoPlayerFuture;

  final FlipCard widget;
  final VideoPlayerController _controller;
  final Future<void> _initializeVideoPlayerFuture;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.systemGrey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(2, 2),
          ),
        ],
        gradient: widget.candidate.color,
        borderRadius: BorderRadius.circular(
          _calculateBorderRadius(_controller.value.aspectRatio),
        ),
      ),
      child: HeroVideoPlayer(
          widget: widget,
          initializeVideoPlayerFuture: _initializeVideoPlayerFuture,
          controller: _controller),
    );
  }
}

double _calculateBorderRadius(double aspectRatio) {
  return aspectRatio * 40.0;
}
