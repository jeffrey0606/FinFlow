import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpb/core/failures/link_payment_method_failure.dart';
import 'package:fpb/payment_methods/domain/i_link_payment_methods_repository_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'google_pay_bloc.freezed.dart';
part 'google_pay_event.dart';
part 'google_pay_state.dart';

@singleton
@injectable
class GooglePayBloc extends Bloc<GooglePayEvent, GooglePayState> {
  final ILinkPaymentMethodsRepositoryFacade
      _iLinkPaymentMethodsRepositoryFacade;

  GooglePayBloc(
    this._iLinkPaymentMethodsRepositoryFacade,
  ) : super(_Loading()) {
    on<_Link>(_onLink);
    on<_Initialize>(_onInitialize);

    add(GooglePayEvent.initialize());
  }

  FutureOr<void> _onInitialize(
    _Initialize event,
    Emitter<GooglePayState> emit,
  ) async {
    emit(GooglePayState.loading());

    final isSupported =
        _iLinkPaymentMethodsRepositoryFacade.googlePaySupported();

    if (isSupported) {
      final alreadyLinkedOrFailure =
          await _iLinkPaymentMethodsRepositoryFacade.googlePayAlreadyLinked();

      alreadyLinkedOrFailure.fold(
        (failure) => emit(GooglePayState.failed(failure)),
        (isLinked) => isLinked
            ? emit(GooglePayState.alreadyLinked())
            : emit(GooglePayState.notLinked()),
      );
    } else {
      emit(GooglePayState.platformNotSupported());
    }
  }

  FutureOr<void> _onLink(_Link event, Emitter<GooglePayState> emit) async {
    emit(GooglePayState.loading());
    final linkGooglePayOrFailure =
        await _iLinkPaymentMethodsRepositoryFacade.linkGooglePay();
    linkGooglePayOrFailure.fold(
      (failure) => emit(GooglePayState.failed(failure)),
      (unit) => emit(GooglePayState.success()),
    );
  }
}
