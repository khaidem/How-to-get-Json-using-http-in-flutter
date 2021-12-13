import 'package:day8/logic/cubit/newsfed_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final state = context.watch<NewsfeedCubit>().state;
    // final status = state.status;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to HomePageDetail'),
          onPressed: () {
            context.read<NewsfeedCubit>().getNewsFeedData();
            // context.router.push(const HomeDetailRoute());
          },
        ),
      ),
    );
  }
}
