import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTileImageWidget extends StatelessWidget {
  final String imageUrl;
  const NewsTileImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(16.0)),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: double.infinity,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            LinearProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
