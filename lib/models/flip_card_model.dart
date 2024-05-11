import 'package:flutter/material.dart';

class FlipCardModel {
  final LinearGradient? color;
  final String videoUrl; // New property for video URL
  final String title;
  final String? details;
  final String subtitle;

  FlipCardModel(
      {this.color,
      required this.videoUrl,
      required this.title,
      required this.subtitle,
      this.details});
}

List<FlipCardModel> candidates = [
  FlipCardModel(
      color: gradientBlue,
      videoUrl: 'assets/videos/16451799-sd_360_640_30fps.mp4',
      title: "JELLY FISH",
      subtitle: " Scyphozoa",
      details: 'Jellyfish, scientifically known as Scyphozoa:\n'
          '- Gelatinous marine creatures belonging to the phylum Cnidaria.\n'
          '- Lack complex anatomical structures like brains and hearts.\n'
          '- Characterized by a translucent bell-shaped body and trailing tentacles armed with venomous cells called nematocysts.\n'
          '- Move through the water by pulsating their bell-shaped body.\n'),
  FlipCardModel(
      color: gradientdarkBlue,
      videoUrl: 'assets/videos/5302702-sd_360_640_30fps.mp4',
      title: "CLOWN FISH",
      subtitle: "Amphiprioninae",
      details:
          '- Clownfish, scientifically known as Amphiprioninae, are brightly colored marine fish.\n'
          '- They are small-sized fish with distinctive orange bodies and white stripes.\n'
          '- Clownfish form symbiotic relationships with sea anemones, living among their tentacles.\n'
          '- They are immune to the stinging cells of sea anemones due to a layer of mucus on their skin.\n'),

  FlipCardModel(
      color: kNewFeedCardColorsIdentityGradient,
      videoUrl: 'assets/videos/17838306-sd_360_640_30fps.mp4',
      title: "DOLPHINE",
      subtitle: " Delphinidae",
      details:
          '- Dolphins, scientifically known as Delphinidae, are highly intelligent marine mammals.\n'
          '- They have streamlined bodies adapted for swift swimming.\n'
          '- Dolphins breathe air through blowholes on their heads.\n'
          '- They often live in social groups called pods.\n'),
  // Add more FlipCardModel instances as needed
];

const LinearGradient gradientdarkBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF041430), Colors.black],
);

const LinearGradient gradientBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF0BA4E0), Colors.black],
);

const LinearGradient kNewFeedCardColorsIdentityGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF7960F1), Colors.black],
);
