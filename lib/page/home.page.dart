import 'package:flutter/material.dart';
import './newfeedModle.page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Feed'),
      ),
      body: const NewsFeedModelPage(),
    );
  }
}
