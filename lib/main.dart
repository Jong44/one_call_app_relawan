import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_call/app/config/color_config.dart';
import 'package:one_call/app/routes/app_routes.dart';
import 'package:one_call/app/services/notifications_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:workmanager/workmanager.dart';

void main() async {

  // initalized firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();



  // initialized notification service
  final notificationsService = NotificationsService();
  notificationsService.configuration();
  notificationsService.handleNotificationAction;
  notificationsService.listenToAction();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'On Call',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConfig.primaryColor),
        useMaterial3: true,
      ),
      //home: const LoginPage(),
      initialRoute: '/auth',
      getPages: AppRoutes.pages,
    );
  }
}
