import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {super.key,
      this.color = Colors.white,
      required this.image,
      required this.body,
      this.height,
      this.width,
      this.imageHeight,
      this.imageWidth,
      this.shadow = const [],
      this.fit = BoxFit.contain,
      this.borderRadius = 10, this.padding, this.margin});
  final ImageProvider image;
  final Widget body;
  final double? height;
  final double? width;
  final double? imageHeight;
  final double? imageWidth;
  final double borderRadius;
  final BoxFit fit;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color color;
  final List<BoxShadow> shadow;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        boxShadow: shadow,
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: image, height: imageHeight, width: imageWidth, fit: fit),
          body
        ],
      ),
    );
  }
}
