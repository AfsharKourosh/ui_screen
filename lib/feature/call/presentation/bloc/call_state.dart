part of 'call_bloc.dart';

@immutable
class CallState extends Equatable {
  final CallStatus callStatus;

  const CallState({required this.callStatus});

  CallState copyWith({CallStatus? newCallStatus}) {
    return CallState(callStatus: newCallStatus ?? callStatus);
  }

  @override
  List<Object?> get props => [callStatus];
}
