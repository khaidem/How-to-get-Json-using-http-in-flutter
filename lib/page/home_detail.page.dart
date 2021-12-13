import 'package:day8/repo/newsfee_repo.dart';
import 'package:flutter/material.dart';

import '../model/newsfeeds.model.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Future Demo Page'),
        ),
        body: FutureBuilder<NewsfeedModle>(
            future: NewsfeedRepo().getData(),
            builder: (context, snapshot) {
              final d = snapshot.data;
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: d!.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(d.data[index].author),
                      );
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
