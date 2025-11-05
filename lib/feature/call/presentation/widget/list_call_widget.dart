import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'card_widget.dart';

class ListCallWidget extends StatelessWidget {
  const ListCallWidget({
    super.key,
    required this.userCount,
    required this.isVisible,
  });

  final bool isVisible;
  final int userCount;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8.0),
      itemCount: userCount,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 375.0.w,
          height: 64.0.h,
          child: CardWidget(isVisible: isVisible),
        );
      },
    );
  }
}


