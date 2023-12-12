import 'package:flutter/material.dart';
import 'package:gradient_slider/gradient_slider.dart';
import 'package:talent_dna/core/constants/assets.dart';
import 'package:talent_dna/core/constants/colors.dart';

class GradientSliderWidget extends StatelessWidget {
  final double value;
  final ValueChanged<double>? onChanged;

  const GradientSliderWidget({
    super.key,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GradientSlider(
      key: key,
      thumbAsset: IconThumSliderSecond.iconThumSliderSecond,
      thumbHeight: 23,
      thumbWidth: 23,
      trackBorder: 0,
      trackBorderColor: Colors.transparent,
      trackHeight: 13,
      activeTrackGradient: LinearGradient(
        colors: [Palette.blueFgradient, Palette.blueFgradient],
      ),
      inactiveTrackGradient: LinearGradient(
        colors: [Palette.pinkFgradient, Palette.pinkFgradient],
      ),
      slider: Slider(
        min: 1.0,
        max: 10,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
