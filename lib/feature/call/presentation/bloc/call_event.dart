part of 'call_bloc.dart';

@immutable
abstract class CallEvent extends Equatable {
  const CallEvent();
}
class GetCallEvent extends CallEvent{
  @override
  List<Object?> get props => [];
}
class LoadCallEvent extends CallEvent{
  @override
  List<Object?> get props => [];
}

