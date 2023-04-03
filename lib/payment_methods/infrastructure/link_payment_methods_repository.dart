import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:fpb/core/failures/link_payment_method_failure.dart';
import 'package:fpb/payment_methods/domain/i_link_payment_methods_repository_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:pay/pay.dart';

@LazySingleton(as: ILinkPaymentMethodsRepositoryFacade)
class LinkPaymentMethodsRepository
    implements ILinkPaymentMethodsRepositoryFacade {
  final Pay _payClient;

  const LinkPaymentMethodsRepository(this._payClient);

  static final _googlePaymentItems = [
    PaymentItem(
      label: 'Link Your Google pay',
      amount: '00.00',
      status: PaymentItemStatus.unknown,
      type: PaymentItemType.item,
    )
  ];

  static final _applePaymentItems = [
    PaymentItem(
      label: 'Link Your Apple pay',
      amount: '00.00',
      status: PaymentItemStatus.unknown,
      type: PaymentItemType.item,
    )
  ];

  @override
  Future<Either<LinkPaymentMethodFailure, bool>> applePayAlreadyLinked() {
    // TODO: implement applePayAlreadyLinked
    throw UnimplementedError();
  }

  @override
  bool applePaySupported() {
    return Platform.isIOS;
  }

  @override
  Future<Either<LinkPaymentMethodFailure, bool>>
      googlePayAlreadyLinked() async {
    return right(false);
    // TODO: implement googlePayAlreadyLinked
    throw UnimplementedError();
  }

  @override
  bool googlePaySupported() {
    return Platform.isAndroid;
  }

  @override
  Future<Either<LinkPaymentMethodFailure, Unit>> linkApplePay() {
    // TODO: implement linkApplePay
    throw UnimplementedError();
  }

  @override
  Future<Either<LinkPaymentMethodFailure, Unit>> linkBankAccount() {
    // TODO: implement linkBankAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<LinkPaymentMethodFailure, Unit>> linkGooglePay() async {
    final userCanPay = await _payClient.userCanPay(PayProvider.google_pay);

    if (userCanPay) {
      try {
        final result = await _payClient.showPaymentSelector(
          PayProvider.google_pay,
          _googlePaymentItems,
        );

        return right(unit);
      } on PlatformException catch (e) {
        return left(
          e.message == null
              ? LinkPaymentMethodFailure.unexpected()
              : LinkPaymentMethodFailure.withMessage(message: e.message!),
        );
      } catch (e) {
        print("linke google fails: $e");
        return left(
          LinkPaymentMethodFailure.unexpected(),
        );
      }
    } else {
      return left(
        LinkPaymentMethodFailure.userCannotPayWithGoogle(),
      );
    }
  }
}
