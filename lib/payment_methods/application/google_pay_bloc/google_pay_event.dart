part of 'google_pay_bloc.dart';

@freezed
class GooglePayEvent with _$GooglePayEvent {
  const factory GooglePayEvent.link() = _Link;

  const factory GooglePayEvent.initialize() = _Initialize;
}
