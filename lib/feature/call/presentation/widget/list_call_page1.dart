import 'package:flutter/material.dart';

import 'list_call_widget.dart';

class ListPage1 extends StatelessWidget {
  const ListPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListCallWidget(userCount: 4, isVisible: true);
  }
}