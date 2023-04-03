part of 'google_pay_bloc.dart';

@freezed
class GooglePayState with _$GooglePayState {
  const GooglePayState._();

  const factory GooglePayState.loading() = _Loading;
  const factory GooglePayState.failed(LinkPaymentMethodFailure failure) =
      _Failed;
  const factory GooglePayState.platformNotSupported() = _PlatformNotSupported;
  const factory GooglePayState.alreadyLinked() = _AlreadyLinked;
  const factory GooglePayState.notLinked() = _NotLinked;
  const factory GooglePayState.success() = _Success;

  bool get isFailure => this == _Failed;
}
