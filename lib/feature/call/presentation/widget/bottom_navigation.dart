import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constant/constant.dart';
import 'camera_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const Center(child: Text('صفحه گفتگو')),
      const Center(child: Text('میکروفون')),
      const Center(child: Text('قطع کردن تماس')),
      const CameraPage(), // ← پیش‌نمایش دوربین
      const Center(child: Text('بلندگو')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: _pages),
    );
  }
}
//       SizedBox(
//         height: 89.0.h,
//         child: BottomNavigationBar(onTap: (index) {
//           setState(() {
//             selectedIndex=index;
//           });
//         },
//           currentIndex: selectedIndex,
//           backgroundColor: Constant.cardBackground,
//           selectedFontSize: 10.0,
//           unselectedFontSize: 10.0,
//           selectedItemColor: Constant.buttonNav,
//           unselectedItemColor: Constant.buttonNav,
//           showUnselectedLabels: true,
//           selectedLabelStyle: TextStyle(height: 3),
//           items: [
//             BottomNavigationBarItem(
//               icon: CircleAvatar(
//                 backgroundColor: Constant.selectButtonBackground,
//                 child: Icon(Icons.message, color: Constant.buttonNav),
//               ),
//               label: 'گفتگو',
//             ),
//             BottomNavigationBarItem(
//               icon: CircleAvatar(
//                 backgroundColor: Constant.selectButtonBackground,
//                 child: Icon(Icons.mic, color: Constant.buttonNav),
//               ),
//               label: 'میکروفون',
//             ),
//             BottomNavigationBarItem(
//               icon: CircleAvatar(
//                 backgroundColor: Constant.incorrectPText,
//                 child: Icon(Icons.call_end, color: Constant.cardBackground),
//               ),
//               label: 'قطع کردن',
//             ),
//             BottomNavigationBarItem(
//               icon: CircleAvatar(
//                 backgroundColor: Constant.selectButtonBackground,
//                 child: Icon(Icons.video_camera_back, color: Constant.buttonNav),
//               ),
//               label: 'دوربین',
//             ),
//             BottomNavigationBarItem(
//               icon: CircleAvatar(
//                 backgroundColor: Constant.selectButtonBackground,
//                 child: Icon(Icons.volume_up, color: Constant.buttonNav),
//               ),
//               label: 'بلندگو',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//----------------------------------------------------------------------------------
//   NavigationBar(
//   indicatorColor: Colors.transparent,
//   overlayColor: WidgetStateProperty.all(Colors.transparent),
//   height: 89.0.h,
//   backgroundColor: Color(0xFFffffff),
//   onDestinationSelected: (int index) {
//     // setState(() {
//     //   currentPageIndex = index;
//     // });
//   },
//   selectedIndex: currentPageIndex,
//   destinations: <Widget>[
//     NavigationDestination(
//       label: 'گفتگو',
//       selectedIcon: CircleAvatar(
//         backgroundColor: Color(0xFFffffff),
//         child: Icon(Icons.message, color: Color(0xFFD6D6D6)),
//       ),
//       icon: CircleAvatar(),
//     ),
//
//     NavigationDestination(
//       label: 'میکروفون',
//       icon: CircleAvatar(
//         backgroundColor: Color(0xFFE6E6E6),
//         child: Icon(Icons.mic_none, color: Color(0xFF454545)),
//       ),
//     ),
//
//     NavigationDestination(
//       label: 'قطع کردن',
//       icon: CircleAvatar(
//         backgroundColor: Color(0xFFE12E2E),
//         child: Image.asset('asset/image/callEnd.png'),
//       ),
//     ),
//
//     NavigationDestination(
//       label: ' دوربین',
//       icon: CircleAvatar(
//         backgroundColor: Color(0xFFE6E6E6),
//         child: Icon(Icons.video_camera_back, color: Color(0xFF454545)),
//       ),
//     ),
//
//     NavigationDestination(
//       label: ' بلندگو',
//       icon: CircleAvatar(
//         backgroundColor: Color(0xFFE6E6E6),
//         child: Icon(Icons.speaker, color: Color(0xFF454545)),
//       ),
//     ),
//   ],
// );}
