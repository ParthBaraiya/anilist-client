import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageTileWithBackdropFilterChild extends StatelessWidget {
  const ImageTileWithBackdropFilterChild({
    super.key,
    required this.imageUrl,
    this.backdropColor,
    required this.child,
    this.decoration = const BoxDecoration(),
    this.foregroundDecoration,
    this.blur = 10,
  });

  final String imageUrl;
  final Color? backdropColor;
  final Widget child;
  final BoxDecoration decoration;
  final BoxDecoration? foregroundDecoration;
  final double blur;

  @override
  Widget build(BuildContext context) {
    final radius = this
            .decoration
            .borderRadius
            ?.resolve(Directionality.maybeOf(context)) ??
        BorderRadius.circular(16);

    Widget widget = Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: radius.bottomRight,
          bottomLeft: radius.bottomLeft,
        ),
        child: BackdropFilter(
          key: ValueKey(child),
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: ColoredBox(
            color: backdropColor ?? Colors.white38,
            child: child,
          ),
        ),
      ),
    );

    if (foregroundDecoration != null) {
      widget = DecoratedBox(
        decoration: foregroundDecoration!,
        child: widget,
      );
    }

    return DecoratedBox(
      decoration: decoration.copyWith(
        image: DecorationImage(
          image: CachedNetworkImageProvider(imageUrl),
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        borderRadius: radius,
      ),
      child: widget,
    );
  }
}
