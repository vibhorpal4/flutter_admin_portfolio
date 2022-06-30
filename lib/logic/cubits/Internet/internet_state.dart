part of 'internet_cubit.dart';

@immutable
abstract class InternetState {}

class InternetLoading extends InternetState {}

class InternelConnected extends InternetState {
  final ConnectionType connectionType;

  InternelConnected({required this.connectionType});
}

class InternetDisconnected extends InternetState {}
