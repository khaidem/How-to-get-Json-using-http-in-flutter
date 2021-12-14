// ignore_for_file: prefer_const_constructors

import 'package:day8/logic/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsFeedModelPage extends StatefulWidget {
  const NewsFeedModelPage({Key? key}) : super(key: key);

  @override
  State<NewsFeedModelPage> createState() => _NewsFeedModelPageState();
}

class _NewsFeedModelPageState extends State<NewsFeedModelPage> {
  @override
  void initState() {
    super.initState();
    context.read<NewsfeedCubit>().getNewsFeedData();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NewsfeedCubit>().state;
    final status = state.status;

    switch (status) {
      case Status.initial:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case Status.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case Status.loaded:
        final news = state.newsfeedModle?.data ?? [];

        return ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(news[index].title),
            );
          },
        );

      case Status.error:
        return const Center(
          child: Text('Error'),
        );
    }
  }
}
