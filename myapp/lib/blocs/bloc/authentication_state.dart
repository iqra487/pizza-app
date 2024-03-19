part of 'authentication_bloc.dart';

enum AuthenticatedStatus { unauthenticated, authenicated, unknown }

class AuthenticatedState extends Equatable {
  const AuthenticatedState._(
      {this.status = AuthenticatedStatus.unknown, this.user});

  final AuthenticatedStatus? status;
  final MyUser? user;

  const AuthenticatedState.unknown() : this._();

  const AuthenticatedState.authenicated(MyUser myUser)
      : this._(user: myUser, status: AuthenticatedStatus.authenicated);

  const AuthenticatedState.unauthenticated()
      : this._(status: AuthenticatedStatus.unauthenticated);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
