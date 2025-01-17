// core/errors/failures.dart

class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class NetworkFailure extends Failure {
  NetworkFailure({required String errorMessage}) : super(errorMessage: errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure({required String errorMessage}) : super(errorMessage: errorMessage);
}