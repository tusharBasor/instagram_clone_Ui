import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/my_account.dart';
import 'package:instagram_clone/Screens/splash.dart';

/// --------------- COLORS ---------------
class AppColors {
  static const black = Color.fromRGBO(33, 33, 33, 1);
  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const lightGrey = Color.fromRGBO(239, 239, 239, 1);
  static const grey = Color.fromRGBO(142, 142, 142, 1);
  static const blue = Color.fromRGBO(0, 149, 246, 1); // Follow button
}

/// --------------- COLOR SCHEME ---------------
final ColorScheme instaColorScheme = ColorScheme.light(
  primary: AppColors.black,
  onPrimary: AppColors.grey,

  surface: AppColors.white,
  onSurface: AppColors.black,
);

/// --------------- APP ---------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      home: SplashScr(),

      theme: ThemeData(
        useMaterial3: false, // VERY IMPORTANT
        colorScheme: instaColorScheme,

        scaffoldBackgroundColor: AppColors.white,

        /// APP BAR
        appBarTheme:  AppBarTheme(
          backgroundColor: AppColors.white,
          elevation: 0,
          foregroundColor: AppColors.black,
        ),

        /// TEXT THEME
        textTheme:  TextTheme(
          bodySmall: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: AppColors.black,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
        ),

        /// DEFAULT BUTTON
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightGrey,
            foregroundColor: AppColors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        dividerColor: AppColors.lightGrey,
      ),
    );
  }
}
