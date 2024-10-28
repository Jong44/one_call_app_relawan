import 'package:get/get.dart';
import 'package:one_call/app/bindings/auth_bindings.dart';
import 'package:one_call/app/bindings/chat_bindings.dart';
import 'package:one_call/app/bindings/group_chat_bindings.dart';
import 'package:one_call/app/bindings/index_main_bindings.dart';
import 'package:one_call/app/bindings/map_bindings.dart';
import 'package:one_call/app/routes/routes_name.dart';
import 'package:one_call/app/views/auth/login/login_page.dart';
import 'package:one_call/app/views/main/details/chat_page_detail.dart';
import 'package:one_call/app/views/main/details/group_page_detail.dart';
import 'package:one_call/app/views/main/index_main.dart';
import 'package:one_call/app/views/main/details/emergency_detail.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RoutesName.home,
      page: () => IndexMain(),
      binding: IndexMainBindings(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.auth,
      page: () => LoginPage(),
      binding: AuthBindings(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.emergencyDetail,
      page: () => EmergencyDetail(),
      binding: MapBindings(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/group/:id',
      page: () => const GroupPageDetail(),
      binding: GroupChatBindings(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: RoutesName.chatPage,
      page: () => const ChatPage(),
      binding: ChatBindings(),
      transition: Transition.fadeIn,
    )
  ];
}
