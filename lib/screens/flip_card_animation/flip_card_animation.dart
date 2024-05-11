import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import '../../utils/size.dart';
import 'components/appino_card_swiper.dart';
import 'components/heading_text.dart';

class FlipCardAnimation extends StatefulWidget {
  const FlipCardAnimation({
    Key? key,
  }) : super(key: key);

  @override
  State<FlipCardAnimation> createState() => _FlipCardAnimationPageState();
}

class _FlipCardAnimationPageState extends State<FlipCardAnimation> {
  final AppinioSwiperController controller = AppinioSwiperController();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((_) {
      _shakeCard();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/pexels-scottwebb-137613.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken),
                filterQuality: FilterQuality.high),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeHeight.height(context, 0.05)),
                  HeadindText(),
                  SizedBox(height: SizeHeight.height(context, 0.05)),
                  AppinoCardSwiper(controller: controller),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _shakeCard() async {
    const double distance = 30;
    await controller.animateTo(
      const Offset(-distance, 0),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    await controller.animateTo(
      const Offset(distance, 0),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    await controller.animateTo(
      const Offset(0, 0),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
