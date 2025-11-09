import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constant/constant.dart';

class CallButton extends StatelessWidget {
  final String buttonText;
  final bool isSelected;
  final VoidCallback onPress;

  const CallButton({
    super.key,
    required this.buttonText,
    required this.onPress,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(160.5.w, 33.0.h),
        backgroundColor: isSelected
            ? Constant.selectButtonBackground
            : Constant.unselectButtonBackground,
      ),
      onPressed: onPress,
      child: Text(
        buttonText,
        style: TextStyle(
          color: isSelected
              ? Constant.selectButtonText
              : Constant.unselectButtonText,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
