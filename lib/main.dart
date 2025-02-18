import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:save2gold/Screens/Dashboard/Dashboard_screen.dart';
import 'package:save2gold/Screens/Ledger/Viewledger_screen.dart';
import 'package:save2gold/Screens/Login/Loginscreen.dart';
import 'package:save2gold/Screens/Receipt/Receipt_screen.dart';
import 'package:save2gold/Screens/Splash/Splash_screen.dart';
import 'package:save2gold/common/Color_Constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("1b431113-e492-48c6-94d3-e935db35face");
  OneSignal.Notifications.requestPermission(true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sava 2 Gold',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color_Constant.primarycolor),
        useMaterial3: true,
        scaffoldBackgroundColor: Color_Constant.backgroundcolor,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


