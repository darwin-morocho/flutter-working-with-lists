import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.imageUrl,
    required this.size,
  }) : super(key: key);

  final double size;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      foregroundImage: NetworkImage(imageUrl),
    );
  }
}
