import 'package:finance_app/core/styling/app_theme.dart';
import 'package:finance_app/core/widgets/eleveted_button.dart';
import 'package:finance_app/core/widgets/outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// flutter pub add flutter_native_splash
// flutter pub run flutter_native_splash:create

// flutter_native_splash:
//   color: "#202020"
//   image: assets/SolarSystemPNG/earth.png
//   branding: assets/SolarSystemPNG/branding.png
//   branding_mode: bottom

//   android_12:
//     image: assets/SolarSystemPNG/earth.png
//     icon_background_color: "#202020"
//     branding: assets/SolarSystemPNG/branding.png

//   color_dark: "#202020"
//   image_dark: assets/SolarSystemPNG/earth.png
//   branding_dark: assets/SolarSystemPNG/branding.png

// WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
// FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
// FlutterNativeSplash.remove();

void main() {
  runApp(FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          routes: {HomeScreen.routeName: (context) => HomeScreen()},
          home: child,
        );
      },

      child: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevetedButtonWidget(title: 'Login', fontSize: 20),
            SizedBox(height: 50),

            OutlinedButtonWidget(title: 'Register', fontSize: 20),
          ],
        ),
      ),
    );
  }
}
