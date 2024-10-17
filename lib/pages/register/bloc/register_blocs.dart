import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/register/bloc/register_events.dart';
import 'package:ulearning_app/pages/register/bloc/register_states.dart';

class RegisterBlocs extends Bloc<RegisterEvent, RegisterStates> {
  RegisterBlocs() : super(const RegisterStates()) {
    on<UserNameEvent>(_userNameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<ConfirmPasswordEvent>(_confirmPasswordEvent);
  }

  FutureOr<void> _userNameEvent(
    UserNameEvent event,
    Emitter<RegisterStates> emit,
  ) {
    emit(state.copyWith(userName: event.userName));
  }

  FutureOr<void> _emailEvent(
    EmailEvent event,
    Emitter<RegisterStates> emit,
  ) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _passwordEvent(
    PasswordEvent event,
    Emitter<RegisterStates> emit,
  ) {
    emit(state.copyWith(password: event.password));
  }

  FutureOr<void> _confirmPasswordEvent(
    ConfirmPasswordEvent event,
    Emitter<RegisterStates> emit,
  ) {
    emit(state.copyWith(confirmPassword: event.confirmPassword));
  }
}
