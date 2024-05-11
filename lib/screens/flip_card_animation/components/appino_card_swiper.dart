import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import '../../../models/flip_card_model.dart';
import '../../../utils/size.dart';
import '../../flip_card/flip_card.dart';

class AppinoCardSwiper extends StatelessWidget {
  const AppinoCardSwiper({
    super.key,
    required this.controller,
  });

  final AppinioSwiperController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .75,
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeWidth.width(context, 0.1),
            right: SizeWidth.width(context, 0.1),
            top: SizeHeight.height(context, 0.01),
            bottom: SizeHeight.height(context, 0.09),
          ),
          child: AppinioSwiper(
            invertAngleOnBottomDrag: true,
            backgroundCardCount: 3,
            swipeOptions: const SwipeOptions.only(left: true),
            controller: controller,
            loop: true,
            onCardPositionChanged: (
              SwiperPosition position,
            ) {
              debugPrint('${position.offset.toAxisDirection()}, '
                  '${position.offset}, '
                  '${position.angle}');
            },
            cardCount: candidates.length,
            cardBuilder: (BuildContext context, int index) {
              return FlipCard(
                candidate: candidates[index],
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }
}
