import 'package:fpb/payment_methods/domain/payment_configurations.dart';
import 'package:injectable/injectable.dart';
import 'package:pay/pay.dart';

@module
abstract class LinkPaymentMethodsInjectableModule {
  @Named("googlePaymentConfig")
  @preResolve
  Future<PaymentConfiguration> get googlePaymentConfig async {
    return PaymentConfiguration.fromJsonString(
      defaultGooglePay,
    );
  }

  @Named("applePaymentConfig")
  @preResolve
  Future<PaymentConfiguration> get applePaymentConfig async {
    return PaymentConfiguration.fromJsonString(
      defaultApplePay,
    );
  }

  @lazySingleton
  Pay pay(
    @Named("googlePaymentConfig") PaymentConfiguration _googlePaymentConfig,
    @Named("applePaymentConfig") PaymentConfiguration _applePaymentConfig,
  ) =>
      Pay(
        {
          PayProvider.google_pay: _googlePaymentConfig,
          PayProvider.apple_pay: _applePaymentConfig,
        },
      );
}
