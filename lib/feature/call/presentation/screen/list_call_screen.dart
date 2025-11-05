import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widget/app_bar.dart';
import '../widget/list_call_page1.dart';
import '../widget/list_call_page2.dart';

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
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBarWidget(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150.0),

          child: Container(
            width: double.infinity,
            color: Color(0xFFF2F3F3),
            child: Column(
              children: [
                SizedBox(
                  width: 343.0.w,
                  height: 48.0.h,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('تماس های صوتی و تصویری'),
                  ),
                ),
                Container(
                  width: 343.0.w,
                  height: 41.0.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(160.5.w, 33.0.h),
                          backgroundColor: indexOfPages ==0
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
                          minimumSize: Size(160.5.w, 33.0.h),
                          backgroundColor: indexOfPages !=0
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
