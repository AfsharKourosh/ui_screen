import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/feature/call/presentation/bloc/bottom_nav/bottom_nav_cubit.dart';
import '../../../../core/util/constant/constant.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex = 0;

  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constant.cardBackground,
      height: 89.0.h,
      child: Row(
        children: List.generate(5, (index) {
          return Expanded(
            child: BlocSelector<BottomNavCubit, int, bool>(
              selector: (selectedIndex) => selectedIndex == index,
              builder: (context, isSelected) {
                final bool isSpecial = index == 2;
                // final bool isSelected = true;

                final Color backgroundColor = isSelected
                    ? (isSpecial ? Colors.purple : Colors.grey) : (isSpecial ? Colors.red : Colors.grey);
                final Color iconColor = isSelected? (isSpecial ? Constant.cardBackground : Constant.userText) : (isSpecial ? Constant.cardBackground : Constant.menuButton);


                return GestureDetector(
                  onTap: () => context.read<BottomNavCubit>().changeTab(index),
                  child: Column(
                    children: [
                      SizedBox(height: 20.0),
                      CircleAvatar(
                        backgroundColor: backgroundColor,
                        child: Icon(
                          getIcon(index),
                          color: iconColor
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(getLable(index)),
                    ],
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }

  IconData getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.message;
      case 1:
        return Icons.mic;
      case 2:
        return Icons.call_end;
      case 3:
        return Icons.video_camera_back;
      case 4:
        return Icons.volume_up;
      default:
        return Icons.icecream;
    }
  }

  String getLable(int index) {
    switch (index) {
      case 0:
        return 'گفتگو';
      case 1:
        return 'میکروفون';
      case 2:
        return 'قطع کردن';
      case 3:
        return 'دوربین';
      case 4:
        return 'بلندگو';
      default:
        return '';
    }
  }
}
