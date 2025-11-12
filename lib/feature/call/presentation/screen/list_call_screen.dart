import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/core/util/constant/constant.dart';
import 'package:ui_screen/feature/call/presentation/bloc/call_bloc.dart';
import 'package:ui_screen/feature/call/presentation/bloc/call_status.dart';
import 'package:ui_screen/feature/call/presentation/widget/call_button.dart';
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
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CallBloc()..add(ChangeTabEvent(index: indexOfPages)),
      child: Scaffold(
        backgroundColor: Constant.appBackground,
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
                  BlocBuilder<CallBloc, CallState>(
                    builder: (context, state) {
                      if (state.callStatus is ListCallLoaded) {
                        indexOfPages =
                            (state.callStatus as ListCallLoaded).tabIndex;
                      }
                      return Container(
                        width: 343.0.w,
                        height: 41.0.h,
                        decoration: BoxDecoration(
                          color: Constant.cardBackground,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CallButton(
                              onPress: () {
                                context.read<CallBloc>().add(
                                  ChangeTabEvent(index: 0),
                                );
                                isSelected2 = !isSelected2;
                              },
                              buttonText: 'تماس های جاری',
                              isSelected: !isSelected2,
                            ),
                            CallButton(
                              isSelected: isSelected2,
                              onPress: () {
                                context.read<CallBloc>().add(
                                  ChangeTabEvent(index: 1),
                                );
                                isSelected2 = !isSelected2;
                              },
                              buttonText: 'صف تماس ها',
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: BlocBuilder<CallBloc, CallState>(
          builder: (context, state) {
            if (state.callStatus is ListCallLoaded) {
              indexOfPages = (state.callStatus as ListCallLoaded).tabIndex;
            }
            return IndexedStack(
              index: indexOfPages,
              children: const [ListPage1(), ListPage2()],
            );
          },
        ),
      ),
    );
  }
}
