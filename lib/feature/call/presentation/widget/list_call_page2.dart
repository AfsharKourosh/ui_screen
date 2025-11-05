
import 'package:flutter/material.dart';

import 'list_call_widget.dart';

class ListPage2 extends StatelessWidget {
  const ListPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListCallWidget(userCount: 1, isVisible: false);
  }}