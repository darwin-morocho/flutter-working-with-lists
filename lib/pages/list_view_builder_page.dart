import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:working_with_lists/widgets/post_tile.dart';

import '../models/post.dart';
import '../models/user.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  late final List<Post> _posts;

  @override
  void initState() {
    super.initState();

    _posts = List.generate(
      1,
      (index) => _getPost(),
    );
  }

  Post _getPost() {
    final faker = Faker();
    return Post(
      id: faker.guid.guid(),
      author: User(
        id: faker.guid.guid(),
        name: faker.person.name(),
        photoUrl: faker.image.image(
          keywords: ['person'],
          random: true,
        ),
      ),
      description: faker.lorem.sentence(),
      image: faker.image.image(
        random: true,
      ),
      likes: faker.randomGenerator.integer(1000),
      comments: faker.randomGenerator.integer(1000),
      shared: faker.randomGenerator.integer(1000),
      createdAt: faker.date.dateTime(minYear: 2019, maxYear: 2023),
    );
  }

  void _onDelete(int index) {
    setState(() {
      _posts.removeAt(index);
    });
  }

  void _add() {
    setState(() {
      _posts.add(
        _getPost(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (_, index) {
          return PostTile(
            post: _posts[index],
            onDelete: () => _onDelete(index),
          );
        },
        itemCount: _posts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _add,
      ),
    );
  }
}
