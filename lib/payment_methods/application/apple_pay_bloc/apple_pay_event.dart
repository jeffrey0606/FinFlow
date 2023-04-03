part of 'apple_pay_bloc.dart';

@freezed
class ApplePayEvent with _$ApplePayEvent {
  const factory ApplePayEvent.link() = _Link;

  const factory ApplePayEvent.initialize() = _Initialize;
}
