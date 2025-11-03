import 'package:flutter/material.dart';

class CallBackScreen extends StatefulWidget {
  const CallBackScreen({super.key});

  @override
  State<CallBackScreen> createState() => _CallBackScreenState();
}

class _CallBackScreenState extends State<CallBackScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 89.0,
        backgroundColor: Color(0xFFffffff),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        // indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          const NavigationDestination(
            selectedIcon: CircleAvatar(),
            //
            icon: CircleAvatar(
              backgroundColor: Color(0xFFEEEEEE),
              child: Icon(Icons.message, color: Color(0xFFD6D6D6)),
            ),
            label: 'گفتگو',
          ),

          NavigationDestination(
            icon: CircleAvatar(
              backgroundColor: Color(0xFFEEEEEE),
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
            icon: CircleAvatar(
              backgroundColor: Color(0xFFEEEEEE),
              child: Icon(Icons.video_camera_back, color: Color(0xFF454545)),
            ),

            label: ' دوربین',
          ),
          NavigationDestination(
            icon: CircleAvatar(
              backgroundColor: Color(0xFFEEEEEE),
              child: Icon(Icons.add, color: Color(0xFF454545)),
            ),
            label: ' بلندگو',
          ),
        ],
      ),

      backgroundColor: Color(0xFFF2F3F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFffffff),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Align(
          alignment: Alignment.topRight,
          child: Image.asset('asset/image/apocom.png'),
        ),
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
                  SizedBox(width: 8.0),
                  Image.asset('asset/image/profile_image.png'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/image/video_call_image.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Positioned(top: 24,right: 16,
                  child: SizedBox(
                    width: 112.0,
                    height: 112,
                    child: Image.asset('asset/image/support_image.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
