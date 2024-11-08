import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/core/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      getPages: AppRoutes.pages,
    );
  }
}
