import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../flip_card.dart';

class HeroVideoPlayer extends StatelessWidget {
  const HeroVideoPlayer({
    super.key,
    required this.widget,
    required Future<void> initializeVideoPlayerFuture,
    required VideoPlayerController controller,
  })  : _initializeVideoPlayerFuture = initializeVideoPlayerFuture,
        _controller = controller;

  final FlipCard widget;
  final Future<void> _initializeVideoPlayerFuture;
  final VideoPlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'videoPlayer_${widget.index}_${widget.candidate.videoUrl}',
      child: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        initialData: null, // Provide initial data to prevent waiting
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  // Calculate the border radius based on aspect ratio
                  _calculateBorderRadius(_controller.value.aspectRatio),
                ),
                child: VideoPlayer(_controller),
              ),
            );
          }
          // If the future is not done, return an empty container
          return Container(child: Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }
}

double _calculateBorderRadius(double aspectRatio) {
  return aspectRatio * 40.0;
}
