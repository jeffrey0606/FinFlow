import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/payment_methods/application/apple_pay_bloc/apple_pay_bloc.dart';
import 'package:fpb/payment_methods/application/bank_account_bloc/bank_account_bloc.dart';
import 'package:fpb/payment_methods/application/google_pay_bloc/google_pay_bloc.dart';
import 'package:fpb/payment_methods/view/widget/link_accounts.dart';
import 'package:fpb/payment_methods/view/widget/payment_cards_widget.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GooglePayBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ApplePayBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<BankAccountBloc>(),
        ),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).colorScheme.surface,
          statusBarIconBrightness: Brightness.dark, // dark icon for iOS
          statusBarBrightness: Brightness.dark, // set dark icon for android
        ),
        child: LayoutBuilder(
          builder: (context, box) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Theme.of(context).colorScheme.surface,
                appBar: CustomAppBar(
                  showArrow: true,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  titleChildWidget: Text(
                    'Payment methods',
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      PaymentCardsWidget(
                        box: box,
                      ),
                      // link accounts
                      LinkAccounts(
                        box: box,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
