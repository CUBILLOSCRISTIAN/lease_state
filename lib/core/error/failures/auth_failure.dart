import 'failure.dart';

class AuthFailure extends Failure {
  AuthFailure(super.message);

  List<Object?> get props => [message];
}
