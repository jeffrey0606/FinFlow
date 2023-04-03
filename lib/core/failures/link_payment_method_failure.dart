import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_payment_method_failure.freezed.dart';

@freezed
abstract class LinkPaymentMethodFailure
    with _$LinkPaymentMethodFailure
    implements Exception {
  const factory LinkPaymentMethodFailure.unexpected(
      {@Default('Something went wrong, please try again.')
          String message}) = _Unexpected;
  const factory LinkPaymentMethodFailure.serverError(
          {@Default('An unknown exception occurred.') String message}) =
      _ServerError;
  const factory LinkPaymentMethodFailure.withMessage(
          {@Default('Something went wrong, please try again') String message}) =
      _WithMessage;
  const factory LinkPaymentMethodFailure.userCannotPayWithGoogle(
          {@Default('You can\'t process google pay') String message}) =
      _UserCannotPayWithGoogle;
  const factory LinkPaymentMethodFailure.userCannotPayWithApple(
          {@Default('You can\'t process apple pay') String message}) =
      _UserCannotPayWithApple;
  factory LinkPaymentMethodFailure.fromErrorMessage(String message) {
    switch (message) {
      case 'server-exception':
        return LinkPaymentMethodFailure.serverError();
      default:
        return LinkPaymentMethodFailure.unexpected();
    }
  }
}
