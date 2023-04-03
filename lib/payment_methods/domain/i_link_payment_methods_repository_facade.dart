import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/link_payment_method_failure.dart';

abstract class ILinkPaymentMethodsRepositoryFacade {
  Future<Either<LinkPaymentMethodFailure, Unit>> linkGooglePay();
  Future<Either<LinkPaymentMethodFailure, Unit>> linkApplePay();
  Future<Either<LinkPaymentMethodFailure, bool>> applePayAlreadyLinked();
  Future<Either<LinkPaymentMethodFailure, bool>> googlePayAlreadyLinked();
  bool applePaySupported();
  bool googlePaySupported();
  Future<Either<LinkPaymentMethodFailure, Unit>> linkBankAccount();
}
