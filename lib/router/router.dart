import 'package:get/get.dart';
import 'package:noticeme/binding/add_binding.dart';
import 'package:noticeme/binding/home_binding.dart';
import 'package:noticeme/binding/manage_binding.dart';
import 'package:noticeme/binding/splash_binding.dart';
import 'package:noticeme/presentation/add/add_item_page.dart';
import 'package:noticeme/presentation/add/add_page.dart';
import 'package:noticeme/presentation/add/add_page_detail.dart';
import 'package:noticeme/presentation/home/home.dart';
import 'package:noticeme/presentation/manage/manage.dart';
import 'package:noticeme/presentation/splash/splash.dart';

routers() => [
      GetPage(
          name: Routers.SPLASH, page: () => Splash(), binding: SplashBinding()),
      GetPage(name: Routers.HOME, page: () => Home(), binding: HomeBinding()),
      GetPage(
          name: Routers.MANAGE, page: () => Manage(), binding: ManageBinding()),
      GetPage(name: Routers.ADD, page: () => AddItemPage(), binding: AddBinding()),
      GetPage(
          name: Routers.ADD_DETAIL,
          page: () => AddPageDetail(),
          binding: AddBinding()),
    ];

abstract class Routers {
  static const SPLASH = '/splash';
  static const GUIDE = '/guide';
  static const HOME = '/home';
  static const MANAGE = '/manage';
  static const CATEGORY_DETAIL = '/category_detail';
  static const ADD = '/add';
  static const ADD_DETAIL = '/add_detail';
  static const ADD_DETAIL_GROUP = '/add_detail_group';
  static const DB = '/db';
}
