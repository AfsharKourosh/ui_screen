import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_state.dart';
//
// class ButtonState extends Equatable {
//   final int? activeButton;
//
//   const ButtonState({this.activeButton });
//
//   @override
//   List<Object?> get props => [activeButton];
// }
//
// class BottomNavCubit extends Cubit <ButtonState>{
//   BottomNavCubit() : super(ButtonState());
// final List<int> activeId=[0,3];
//   void tap(int id) {
//     if (!activeId.contains(id)) return;
//     emit(ButtonState(activeButton: id));
//   }
// }
//

class BottomNavCubit extends Cubit<Map<String, dynamic>> {
  BottomNavCubit() : super({"index": 0, "cameraOpen": false});

  void changeTab(int index) {
    bool isCameraOpen = state["cameraOpen"];
    int currentIndex = state["index"];
    if (index == 3) {
      bool newCameraState = !isCameraOpen;
      emit({"index": 3, "cameraOpen": newCameraState});
      return;
    }

    emit({"index": index, "cameraOpen": false});
  }
}
