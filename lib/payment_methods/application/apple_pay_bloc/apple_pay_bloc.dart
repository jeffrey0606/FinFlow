import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpb/core/failures/link_payment_method_failure.dart';
import 'package:fpb/payment_methods/domain/i_link_payment_methods_repository_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'apple_pay_bloc.freezed.dart';
part 'apple_pay_event.dart';
part 'apple_pay_state.dart';

@singleton
@injectable
class ApplePayBloc extends Bloc<ApplePayEvent, ApplePayState> {
  final ILinkPaymentMethodsRepositoryFacade
      _iLinkPaymentMethodsRepositoryFacade;

  ApplePayBloc(
    this._iLinkPaymentMethodsRepositoryFacade,
  ) : super(_Loading()) {
    on<_Link>(_onLink);
    on<_Initialize>(_onInitialize);

    add(ApplePayEvent.initialize());
  }

  FutureOr<void> _onInitialize(
    _Initialize event,
    Emitter<ApplePayState> emit,
  ) async {
    emit(ApplePayState.loading());

    final isSupported =
        _iLinkPaymentMethodsRepositoryFacade.applePaySupported();

    if (isSupported) {
      final alreadyLinkedOrFailure =
          await _iLinkPaymentMethodsRepositoryFacade.applePayAlreadyLinked();

      alreadyLinkedOrFailure.fold(
        (failure) => emit(ApplePayState.failed(failure)),
        (isLinked) => isLinked
            ? emit(ApplePayState.alreadyLinked())
            : emit(ApplePayState.notLinked()),
      );
    } else {
      emit(ApplePayState.platformNotSupported());
    }
  }

  FutureOr<void> _onLink(_Link event, Emitter<ApplePayState> emit) async {
    emit(ApplePayState.loading());
    final linkApplePayOrFailure =
        await _iLinkPaymentMethodsRepositoryFacade.linkApplePay();
    linkApplePayOrFailure.fold(
      (failure) => emit(ApplePayState.failed(failure)),
      (unit) => emit(ApplePayState.success()),
    );
  }
}
