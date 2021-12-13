import 'package:day8/router/router.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to HomePageDetail'),
          onPressed: () {
            context.router.push(const HomeDetailRoute());
          },
        ),
      ),
    );
  }
}
