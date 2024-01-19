import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 16 / 20,
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.accents[index],
          );
        },
        itemCount: Colors.accents.length,
      ),
    );
  }
}
