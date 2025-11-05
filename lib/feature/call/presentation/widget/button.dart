import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int indexOfPages = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(160.5.w, 33.0.h),
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
    );
  }
}
