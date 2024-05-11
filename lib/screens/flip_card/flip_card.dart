import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../models/flip_card_model.dart';
import '../../utils/size.dart';
import '../full_screen_videos/full_screen_video.dart';
import 'components/text_widget.dart';
import 'components/video_player_flip_card.dart';

class FlipCard extends StatefulWidget {
  final FlipCardModel candidate;
  final int index;

  const FlipCard({
    Key? key,
    required this.candidate,
    required this.index,
  }) : super(key: key);

  @override
  _FlipCardState createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _initVideoPlayer();
  }

  @override
  void didUpdateWidget(covariant FlipCard oldWidget) {
    if (widget.candidate.videoUrl != oldWidget.candidate.videoUrl) {
      _disposeVideoPlayer();
      _initVideoPlayer();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _initVideoPlayer() {
    _controller = VideoPlayerController.asset(widget.candidate.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      _controller.setVolume(0.0); // Mute the video
      _controller.setLooping(true); // Enable looping
      // Autoplay the video once it's initialized
      _controller.play();
    });
  }

  void _disposeVideoPlayer() {
    _controller.dispose();
  }

  @override
  void dispose() {
    _disposeVideoPlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullScreenVideo(
              videoController: _controller,
              title: widget.candidate.title,
              subtitle: widget.candidate.subtitle,
              details: widget.candidate.details!,
              tag: 'videoPlayer_${widget.index}_${widget.candidate.videoUrl}',
            ),
          ),
        );
      },
      child: Column(
        children: [
          Flexible(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeWidth.width(context, 0.06),
                    right: SizeWidth.width(context, 0.06),
                  ),
                  child: VideoPlayerFlipCards(
                      widget: widget,
                      controller: _controller,
                      initializeVideoPlayerFuture:
                          _initializeVideoPlayerFuture),
                ),
                TextWidget(widget: widget),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
