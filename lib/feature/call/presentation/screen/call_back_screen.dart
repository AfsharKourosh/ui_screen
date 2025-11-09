import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widget/app_bar.dart';

class CallBackScreen extends StatefulWidget {
  const CallBackScreen({super.key});

  @override
  State<CallBackScreen> createState() => _CallBackScreenState();
}

class _CallBackScreenState extends State<CallBackScreen> {
  int _selectedIndex =0;
  int currentPageIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF2F3F3),appBar: AppBarWidget(),

        bottomNavigationBar:

        NavigationBar(
          indicatorColor: Colors.transparent, overlayColor: WidgetStateProperty.all(Colors.transparent),
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
              selectedIcon: CircleAvatar( backgroundColor: Color(0xFFffffff),
                child:Icon(Icons.message, color: Color(0xFFD6D6D6)),),
              icon:
              CircleAvatar(

              ),
              label: 'گفتگو',
            ),
            NavigationDestination(
              icon: CircleAvatar(
                backgroundColor: Color(0xFFE6E6E6),
                child: Icon(Icons.mic_none, color: Color(0xFF454545)),
              ),
              label: 'میکروفون',
            ),
            NavigationDestination(
              icon: CircleAvatar(
                backgroundColor: Color(0xFFE12E2E),
                child: Image.asset('asset/image/callEnd.png'),
              ),
              label: 'قطع کردن',
            ),
            NavigationDestination(
              label: ' دوربین',
              icon: CircleAvatar(
                backgroundColor: Color(0xFFE6E6E6),
                child: Icon(Icons.video_camera_back, color: Color(0xFF454545)),
              ),
            ),
            NavigationDestination(
              icon: CircleAvatar(
                backgroundColor: Color(0xFFE6E6E6),
                child: Icon(Icons.speaker, color: Color(0xFF454545)),
              ),
              label: ' بلندگو',
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
    // Expanded(
    //   child: Stack(
    //     children: [
    //       Container(
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: AssetImage('asset/image/video_call_image.png'),
    //             fit: BoxFit.fill,
    //           ),
    //         ),
    //       ),
    //
    //       Positioned(
    //         top: 24.h,
    //         right: 16.w,
    //         child: SizedBox(
    //           width: 112.0.w,
    //           height: 112.h,
    //           child: Image.asset('asset/image/support_image.png'),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
    ],
    ),
    );
  }
}
