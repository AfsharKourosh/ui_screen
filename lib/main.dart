import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/feature/call/presentation/screen/call_back_screen.dart';
import 'feature/call/presentation/screen/list_call_screen.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        // CallBackScreen()
        ListCallScreen(),
      ),
    ),
  );
}
