part of 'apple_pay_bloc.dart';

@freezed
class ApplePayState with _$ApplePayState {
  const ApplePayState._();

  const factory ApplePayState.loading() = _Loading;
  const factory ApplePayState.failed(LinkPaymentMethodFailure failure) =
      _Failed;
  const factory ApplePayState.platformNotSupported() = _PlatformNotSupported;
  const factory ApplePayState.alreadyLinked() = _AlreadyLinked;
  const factory ApplePayState.notLinked() = _NotLinked;
  const factory ApplePayState.success() = _Success;

  bool get isFailure => this == _Failed;
}
