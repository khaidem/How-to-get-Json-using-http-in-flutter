import 'package:flutter/material.dart';
import 'app/app.dart';
import 'router/app_router.dart';
import 'router/router.dart';

void main() {
  final _appRouter = AppRouter();
  runApp(MyApp(appRouter: _appRouter));
}
