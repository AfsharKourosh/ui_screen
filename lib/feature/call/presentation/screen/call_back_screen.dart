import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widget/app_bar.dart';

class CallBackScreen extends StatefulWidget {
  const CallBackScreen({super.key});

  @override
  State<CallBackScreen> createState() => _CallBackScreenState();
}

class _CallBackScreenState extends State<CallBackScreen> {

  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F3),
      appBar: AppBarWidget(),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        height: 89.0.h,
        backgroundColor: Color(0xFFffffff),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            label: 'گفتگو',
            selectedIcon: CircleAvatar(
              backgroundColor: Color(0xFFffffff),
              child: Icon(Icons.message, color: Color(0xFFD6D6D6)),
            ),
            icon: CircleAvatar(),
          ),

          NavigationDestination(
            label: 'میکروفون',
            icon: CircleAvatar(
              backgroundColor: Color(0xFFE6E6E6),
              child: Icon(Icons.mic_none, color: Color(0xFF454545)),
            ),
          ),

          NavigationDestination(
            label: 'قطع کردن',
            icon: CircleAvatar(
              backgroundColor: Color(0xFFE12E2E),
              child: Image.asset('asset/image/callEnd.png'),
            ),
          ),

          NavigationDestination(
            label: ' دوربین',
            icon: CircleAvatar(
              backgroundColor: Color(0xFFE6E6E6),
              child: Icon(Icons.video_camera_back, color: Color(0xFF454545)),
            ),
          ),

          NavigationDestination(
            label: ' بلندگو',
            icon: CircleAvatar(
              backgroundColor: Color(0xFFE6E6E6),
              child: Icon(Icons.speaker, color: Color(0xFF454545)),
            ),
          ),
        ],
      ),

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
        ],
      ),
    );
  }
}

//---------------------------------------------------------------------------------
// BottomNavigationBar(
//   currentIndex: _selectedIndex,
//   onTap: _onItemTapped,
//   selectedItemColor: Colors.transparent
//   unselectedItemColor: Colors.grey,
//   showUnselectedLabels: true,
//   items: const [
//     BottomNavigationBarItem(
//       icon: CircleAvatar(backgroundColor: Colors.transparent,child: Icon(Icons.home_outlined),),
//       label: "Home",
//     ),
//     BottomNavigationBarItem(
//         icon: Icon(Icons.search), label: "Search"),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.favorite_border),
//       activeIcon: Icon(Icons.favorite),
//       label: "Favorites",
//     ),
//   ],
// ),
