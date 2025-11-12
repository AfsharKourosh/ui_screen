import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/core/util/constant/constant.dart';

import '../screen/call_back_screen.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.isVisible});

  final int index = 0;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      elevation: 0,
      child: ListTile(
        tileColor: Constant.cardBackground,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              child: Image.asset('asset/image/callEnd.png'),
              onTap: () {},
            ),
            SizedBox(width: 8.0.w),
            Visibility(
              visible: isVisible,
              child: GestureDetector(
                child: Image.asset('asset/image/call.png'),
                onTap: () {},
              ),
            ),
          ],
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('کاربر${index + 1001}', textAlign: TextAlign.end),
            SizedBox(width: 4.0.w),
            isVisible
                ? Image.asset('asset/image/video.png')
                : Image.asset('asset/image/voiceCall.png'),
            SizedBox(width: 8.0.w),
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
    );
  }
}
