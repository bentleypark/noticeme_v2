import 'package:get/get.dart';
import 'package:noticeme/binding/home_binding.dart';
import 'package:noticeme/binding/manage_binding.dart';
import 'package:noticeme/binding/splash_binding.dart';
import 'package:noticeme/presentation/home/home.dart';
import 'package:noticeme/presentation/manage/manage.dart';
import 'package:noticeme/presentation/splash/splash.dart';

routers() => [
      GetPage(
          name: Routers.SPLASH, page: () => Splash(), binding: SplashBinding()),
      GetPage(name: Routers.HOME, page: () => Home(), binding: HomeBinding()),
      GetPage(
          name: Routers.MANAGE, page: () => Manage(), binding: ManageBinding()),
    ];

abstract class Routers {
  static const SPLASH = '/splash';
  static const GUIDE = '/guide';
  static const HOME = '/home';
  static const MANAGE = '/manage';
  static const CATEGORY_DETAIL = '/category_detail';
  static const ADD_CUSTOM = '/add_custom';
  static const DB = '/db';
}
