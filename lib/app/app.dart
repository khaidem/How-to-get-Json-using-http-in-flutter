import 'package:day8/logic/cubit/newsfed_cubit.dart';
import 'package:day8/repo/newsfee_repo.dart';
import 'package:day8/router/router.dart';
import 'package:day8/widget/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;
  final NewsfeedRepo newsfeedRepo = NewsfeedRepo();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // create: (context) => AuthenticationService(FirebaseAuth.instance)),

        // BlocProvider(
        //   create: (context) => NewsfeedCubit(repo: newsfeedRepo),

        // )
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
