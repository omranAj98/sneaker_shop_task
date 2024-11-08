import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/core/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: AppRoutes.pages,
    );
  }
}
