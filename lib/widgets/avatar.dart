import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.imageUrl,
    required this.size,
    this.borderWidth = 0,
  }) : super(key: key);

  final double size;
  final String imageUrl;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
