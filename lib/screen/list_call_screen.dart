import 'package:flutter/material.dart';
import 'package:ui_screen/screen/call_back_screen.dart';

class ListCallScreen extends StatefulWidget {
  const ListCallScreen({super.key});

  @override
  State<ListCallScreen> createState() => _ListCallScreenState();
}

class _ListCallScreenState extends State<ListCallScreen> {
  int indexOfPages = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFffffff),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Align(
          alignment: Alignment.topRight,
          child: Image.asset('asset/image/apocom.png'),
        ),

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            width: double.infinity,
            color: Color(0xFFF2F3F3),
            child: Column(
              children: [
                SizedBox(
                  width: 343.0,
                  height: 48.0,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('تماس های صوتی و تصویری'),
                  ),
                ),
                Container(
                  width: 343.0,
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(160.5, 33.0),
                          backgroundColor: indexOfPages == 0
                              ? Color(0xFFffffff)
                              : Color(0xFFF1EEF7),
                        ),
                        onPressed: () => setState(() => indexOfPages = 0),
                        child: Text(
                          'تماس های جاری',
                          style: TextStyle(
                            color: indexOfPages == 0
                                ? Color(0xFF5E5E5E)
                                : Color(0xFF65499E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(160.5, 33.0),
                          backgroundColor: indexOfPages == 1
                              ? Color(0xFFffffff)
                              : Color(0xFFF1EEF7),
                        ),
                        onPressed: () => setState(() => indexOfPages = 1),
                        child: Text(
                          ' صف تماس ها',
                          style: TextStyle(
                            color: indexOfPages == 1
                                ? Color(0xFF5E5E5E)
                                : Color(0xFF65499E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: IndexedStack(
        index: indexOfPages,
        children: const [ListPage1(), ListPage2()],
      ),
    );
  }
}

class ListPage1 extends StatelessWidget {
  const ListPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8.0),
      itemCount: 10,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 375.0,
          height: 64,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            elevation: 0,
            child: ListTile(
              tileColor: Color(0xFFffffff),
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    child: Image.asset('asset/image/callEnd.png'),
                    onTap: () {},
                  ),
                  SizedBox(width: 16.0),
                  GestureDetector(
                    child: Image.asset('asset/image/call.png'),
                    onTap: () {},
                  ),
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('کاربر ${index + 1001}', textAlign: TextAlign.end),
                  SizedBox(width: 4),
                  Image.asset('asset/image/video.png'),
                  SizedBox(width: 8),
                  Image.asset('asset/image/profile_image.png'),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallBackScreen()),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class ListPage2 extends StatelessWidget {
  const ListPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8.0),
      itemCount: 1,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 375.0,
          height: 64,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            elevation: 0,
            child: ListTile(
              tileColor: Color(0xFFffffff),
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset('asset/image/callEnd.png'),
                        onTap: () {},
                      ),
                      SizedBox(height: 4.0),
                      Text('2:34'),
                    ],
                  ),
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('کاربر ${index + 1001}', textAlign: TextAlign.end),

                  SizedBox(width: 8),
                  Image.asset('asset/image/profile_image.png'),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallBackScreen()),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
