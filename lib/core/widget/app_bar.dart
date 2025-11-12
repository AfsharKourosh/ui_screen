import 'package:flutter/material.dart';
import 'package:ui_screen/core/util/constant/constant.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const AppBarWidget({super.key, this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constant.cardBackground,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      title: Align(
        alignment: Alignment.topRight,
        child: Image.asset('asset/image/apocom.png'),
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(bottom?.preferredSize.height ?? 50.0);
}
