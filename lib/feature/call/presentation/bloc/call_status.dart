import 'package:equatable/equatable.dart';

abstract class CallStatus extends Equatable {
  const CallStatus();

  @override
  List<Object?> get props => [];
}

class CallInitial extends CallStatus {}

class CallLoading extends CallStatus {}

class ListCallLoaded extends CallStatus {
  final int tabIndex;

  const ListCallLoaded(this.tabIndex);

  @override
  List<Object?> get props => [tabIndex];
}

class CallEnded extends CallStatus {}

class CallError extends CallStatus {
  final String message;

  const CallError({required this.message});
}
