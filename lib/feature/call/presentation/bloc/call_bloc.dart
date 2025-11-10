import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ui_screen/feature/call/presentation/bloc/call_status.dart';

part 'call_event.dart';

part 'call_state.dart';

class CallBloc extends Bloc<CallEvent, CallState> {

  CallBloc() : super(CallState(callStatus: CallInitial())) {

    on<ChangeTabEvent>((event, emit) {
      emit(state.copyWith(newCallStatus: ListCallLoaded(event.index)));
    });
  }
}
