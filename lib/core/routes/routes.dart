import 'package:get/get.dart';
import 'package:helloworld/presentation/binding/main_binding.dart';
import 'package:helloworld/presentation/views/main_view.dart';

class AppRoutes {
  static const String home = '/home';

  static List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    // Add more routes here as needed
  ];
}
