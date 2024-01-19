import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class SimpleListPage extends StatelessWidget {
  const SimpleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          100,
          (index) {
            return Image.network(
              faker.image.image(
                random: true,
              ),
            );
          },
        ),
      ),
    );
  }
}
