part of 'authentication_bloc.dart';

enum AuthenticatedStatus { unauthenticated, authenicated, unknown }

class AuthenticationState extends Equatable {
  const AuthenticationState._(
      {this.status = AuthenticatedStatus.unknown, this.user});

  final AuthenticatedStatus? status;
  final MyUser? user;

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenicated(MyUser myUser)
      : this._(user: myUser, status: AuthenticatedStatus.authenicated);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticatedStatus.unauthenticated);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
