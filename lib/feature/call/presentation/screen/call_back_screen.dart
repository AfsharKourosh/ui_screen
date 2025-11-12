import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/core/widget/app_bar.dart';
import 'package:ui_screen/feature/call/presentation/widget/bottom_navigation.dart';
import 'package:ui_screen/feature/call/presentation/widget/camera_page.dart';
import '../bloc/bottom_nav/bottom_nav_cubit.dart';

class CallBackScreen extends StatelessWidget {
  const CallBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => BottomNavCubit(), child: CallBackView());
  }
}

class CallBackView extends StatelessWidget {
  const CallBackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F3),
      appBar: AppBarWidget(),
      bottomNavigationBar: BottomNavigation(),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            elevation: 0,
            child: ListTile(
              tileColor: Color(0xFFffffff),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('کاربر 1010', textAlign: TextAlign.end),
                  SizedBox(width: 8.0.w),
                  Image.asset('asset/image/profile_image.png'),
                ],
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<BottomNavCubit, int>(
              builder: (context, index) {
                switch (index) {
                  case 0:
                    return Center(child: Text('گفتگو'));
                  case 1:
                    return Center(child: Text('میکروفون'));
                  case 2:
                    return Center(child: Text('قطع کردن'));
                  case 3:
                    return CameraPage();
                  case 4:
                    return Center(child: Text('بلندگو'));
                  default:
                    return SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
