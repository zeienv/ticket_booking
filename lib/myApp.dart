import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/route/route_generator.dart';
import 'core/route/route_names.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.introPage1,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
    );
  }
}