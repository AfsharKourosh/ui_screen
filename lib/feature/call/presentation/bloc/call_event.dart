part of 'call_bloc.dart';

@immutable
abstract class CallEvent extends Equatable {
  const CallEvent();
}

class ChangeTabEvent extends CallEvent {
  final int index;
  const ChangeTabEvent({required this.index});

  @override
  List<Object?> get props => [ChangeTabEvent];
}
