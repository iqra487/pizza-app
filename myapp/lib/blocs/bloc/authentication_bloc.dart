import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:user_repository/user_respository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  late final StreamSubscription<MyUser> _userSubscription;
  final UserRepository userRepository;
  AuthenticationBloc({required this.userRepository})
      : super(AuthenticationState.unknown()) {
    on<AuthenticationEvent>((event, emit) {
      _userSubscription = userRepository.user.listen((user) {
        add(AuthenticationUserChanged(user));
      });
      // TODO: implement event handler
    });
    on<AuthenticationUserChanged>((event, emit) {
      if (event.user != MyUser.empty) {
        emit(AuthenticationState.authenicated(event.user));
      } else {
        emit(AuthenticationState.unauthenticated());
      }
    });
  }
}
