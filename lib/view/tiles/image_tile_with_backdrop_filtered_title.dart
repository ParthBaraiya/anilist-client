import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/view/tiles/image_tile_with_backdrop_filtered_child.dart';
import 'package:flutter/material.dart';

class ImageTileWithBackdropFilteredTitle extends StatelessWidget {
  const ImageTileWithBackdropFilteredTitle({
    super.key,
    required this.imageUrl,
    this.backdropColor,
    required this.title,
    this.decoration = const BoxDecoration(),
    this.foregroundDecoration,
    this.blur = 10,
  });

  final String imageUrl;
  final Color? backdropColor;
  final String title;
  final BoxDecoration decoration;
  final BoxDecoration? foregroundDecoration;
  final double blur;

  @override
  Widget build(BuildContext context) {
    return ImageTileWithBackdropFilterChild(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: AppConfig.theme.bodyTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
      imageUrl: imageUrl,
      backdropColor: backdropColor,
      blur: blur,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
    );
  }
}
