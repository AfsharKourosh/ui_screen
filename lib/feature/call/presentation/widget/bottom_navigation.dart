import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constant/constant.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;

  final ValueChanged<int> tap;

  const BottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 89.0.h,
      child: BottomNavigationBar(
        onTap: tap,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Constant.cardBackground,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        selectedItemColor: Constant.buttonNav,
        unselectedItemColor: Constant.buttonNav,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(height: 3),
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Constant.selectButtonBackground,
              child: Icon(Icons.message, color: Constant.buttonNav),
            ),
            label: 'گفتگو',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Constant.selectButtonBackground,
              child: Icon(Icons.mic, color: Constant.buttonNav),
            ),
            label: 'میکروفون',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Constant.incorrectPText,
              child: Icon(Icons.call_end, color: Constant.cardBackground),
            ),
            label: 'قطع کردن',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Constant.selectButtonBackground,
              child: Icon(Icons.video_camera_back, color: Constant.buttonNav),
            ),
            label: 'دوربین',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Constant.selectButtonBackground,
              child: Icon(Icons.volume_up, color: Constant.buttonNav),
            ),
            label: 'بلندگو',
          ),
        ],
      ),
    );
  }
}
