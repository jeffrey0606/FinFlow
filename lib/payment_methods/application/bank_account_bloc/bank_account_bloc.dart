import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account_event.dart';
part 'bank_account_state.dart';
part 'bank_account_bloc.freezed.dart';

class BankAccountBloc extends Bloc<BankAccountEvent, BankAccountState> {
  BankAccountBloc() : super(_Initial()) {
    on<BankAccountEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
